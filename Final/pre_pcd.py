# -*- coding: utf-8 -*-
""" Point Cloud preprocessing:

Class design for an open3d pointcloud preprocessing.

"""
import open3d as o3d
import numpy as np
import matplotlib.pyplot as plt
import utils 
from sklearn import linear_model


class PointCloud:
    ''' Class containing the pointcloud.
    
    Args: 
        pcd: open3d pointcloud
        scaling_factor: scaling factor for the real distance measurements, default = 1
    
    '''
    
    def __init__(self, pcd):
        self.pcd = pcd
        # self.pcd.estimate_normals()
        # self.floor =[]
        
        
    def outlier_removal(self, nb_neighbors, std_ratio, verbose = False):
        ''' Performs open3d Statistical_outlier_remval 
        
        Args:
            nb_neighbors: number of neighbors threshold so that a point is not removed
            std_ratio: distance of points necessary to be count as neighbors
            verbose: boolean to plot the outliers and inliers
        '''
        
        self.pcd, ind = self.pcd.remove_statistical_outlier(nb_neighbors=nb_neighbors,
                                                            std_ratio=std_ratio)
        
        if verbose == True:
            utils.display_inlier_outlier(self.pcd, ind) 
            
           
    def display(self):
        '''Display current state of pcd'''
        utils.display_geo([self.pcd])
        
    def crop_dim(self, dim = 2, ratio = 0.2):
        ''' Crop the pointcloud with respect to 1 dimension. 
        
        
        Args:
            dim: dimension to cut. 0 -> x, 1 -> y, 2 -> z
            ratio: percentage of z axis to remove, default = 20%.
        
        '''
        #Get axis alligned bounding box
        aabox = self.pcd.get_axis_aligned_bounding_box()
        min_bound = np.asarray(aabox.get_min_bound())
        max_bound = np.asarray(aabox.get_max_bound())
        
        #Compute new bound
        new_bound = (max_bound[dim]) * ratio
        min_bound[dim] = new_bound
        
        # Compute aabox and crop
        aabox = o3d.geometry.AxisAlignedBoundingBox(min_bound, max_bound)      
        self.pcd = self.pcd.crop(aabox)
        
    
    
    def floor_alignment(self, verbose = False):
        ''' Allign pcd with floor or most populated plane.
        
        Args:
            verbose: displays segmented plane
        '''
        
        # Downsample point cloud to prevent high density planes to be selected
        downpcd = self.pcd.voxel_down_sample(voxel_size = 0.2)
        
        # segment plane and create a new pcd of just floor
        floor, inliers = downpcd.segment_plane(distance_threshold =  0.02, ransac_n = 3, num_iterations = 1000)
        f = downpcd.select_by_index(inliers)
        
        if verbose == True:
            utils.display_geo([f])
        
        # Translate whole pcd and floor to floor origin
        origin= f.get_center()
        f.translate(-origin)
        self.pcd.translate(-origin)
        
        # Compute normals and allign them
        f.estimate_normals()
        f.orient_normals_to_align_with_direction()
        
        # Normal Average to compute Rotation matrix
        v = np.average(np.asarray(f.normals), axis=0)
        
        #align z axis with normal vector of floor (2 Rotation matrices)
        rz = np.arctan2(v[1],v[0])
        ry = np.arctan2(np.sqrt(v[1]*v[1]+v[0]*v[0]),v[2])
        R_z = np.asarray([[np.cos(rz), -np.sin(rz), 0], [np.sin(rz), np.cos(rz), 0], [0, 0, 1]])
        R_y = np.asarray([[np.cos(ry), 0, np.sin(ry)], [0, 1, 0], [-np.sin(ry), 0, np.cos(ry)]])
        
        # Rotate complete pcd        
        self.pcd.rotate(R_z,center= (0,0,0))  
        self.pcd.rotate(R_y,center= (0,0,0))
        
        # rotate 180 degrees if the points have negative z value
        avg_z = np.average(np.asarray(self.pcd.points), axis = 0)[2]
        if avg_z < 0:
            R = np.array([[-1,0,0], [0,1,0], [0,0,-1]])
            self.pcd.rotate(R,center= (0,0,0))
        
     
    def x_alignment(self, threshold = 1.5, verbose= False):
        
        ''' X-axis allignment.
        Based on a RANSAC model implementation over all the points (x,y) coordinates.
        
        Args:
            threshold: RANSAC threshold. default =1.5
            verbose: plots RANSAC steps if True
        '''   
        #Copy pcd to not overwrite original
        downpcd = self.pcd
        x = np.asarray(downpcd.points)[:,0]
        y = np.asarray(downpcd.points)[:,1]
        x = x.reshape(-1,1)
        y = y.reshape(-1,1)
        
        #sklearn ransac
        ransac = linear_model.RANSACRegressor(min_samples = x.shape[1]+1, residual_threshold= threshold)
        ransac.fit(x, y)
        
        inlier_mask = ransac.inlier_mask_
        outlier_mask = np.logical_not(inlier_mask)
        
        # Save original
        all_lines = []
        line = []
        line_x = np.asarray([[x.min()],[x.max()]])
        line_y = ransac.predict(line_x)
        line = np.append(line_x, line_y, axis = 1)
        all_lines.append(line)
        
        inliers = []
        
        # Get number of inliers and append to list
        n = np.sum(inlier_mask)
        inliers.append(n)
        
        # Verbosity
        if verbose == True:
            print(f"Estimated ransac inliers for original x-axis allignment {n} after {ransac.n_trials_} trials.")
            lw = 2
            plt.scatter(x[inlier_mask], y[inlier_mask], color="yellowgreen", marker=".", label="Inliers")
            plt.scatter(x[outlier_mask], y[outlier_mask], color="gold", marker=".", label="Outliers" )
            plt.plot(line_x, line_y, color="cornflowerblue", linewidth=lw, label="RANSAC regressor",)
            plt.show()
        
        #Try RANSAC at 30, 60 and 90 degrees rotation (helps sklearn algorithm).
        # This step was found to be necessary given sklearn ransac implementation limits.
        r = np.pi/6
        
        for i in range(3):
            # Rotate pi/6
            R = np.asarray([[np.cos(r), -np.sin(r), 0], [np.sin(r), np.cos(r), 0], [0, 0, 1]])
            downpcd.rotate(R,center = (0,0,0))
            
            # Repeat original process
            x = np.asarray(downpcd.points)[:,0]
            y = np.asarray(downpcd.points)[:,1]
            x = x.reshape(-1,1)
            y = y.reshape(-1,1)
            
            #sklearn ransac
            ransac = linear_model.RANSACRegressor(min_samples = x.shape[1]+1, residual_threshold= threshold)
            ransac.fit(x, y)
            
            inlier_mask = ransac.inlier_mask_
            outlier_mask = np.logical_not(inlier_mask)
            
            line = []
            line_x = np.asarray([[x.min()],[x.max()]])
            line_y = ransac.predict(line_x)
            line = np.append(line_x, line_y, axis = 1)
            all_lines.append(line)
            
            #Get number of inliers and append to list
            n = np.sum(inlier_mask)
            inliers.append(n)
            
            #Verbosity
            if verbose == True:
                print(f"Estimated ransac coefficient for x-axis allignment {n} after {ransac.n_trials_} trials.")
                lw = 2
                plt.scatter(x[inlier_mask], y[inlier_mask], color="yellowgreen", marker=".", label="Inliers")
                plt.scatter(x[outlier_mask], y[outlier_mask], color="gold", marker=".", label="Outliers" )
                plt.plot(line_x, line_y, color="cornflowerblue", linewidth=lw, label="RANSAC regressor",)
                plt.show()
        
        # Get highest numbers of inlier rotation and rotate base angle
        r *= np.argmax(inliers)
        R = np.asarray([[np.cos(r), -np.sin(r), 0], [np.sin(r), np.cos(r), 0], [0, 0, 1]])
        self.pcd.rotate(R,center = (0,0,0))
        
        # Get line for highest ransac and compute its angle
        line = all_lines[np.argmax(inliers)]
        a = -np.arctan2((line[1,1]-line[0,1]),(line[1,0]-line[0,0]))
        R_a = np.asarray([[np.cos(a), -np.sin(a), 0], [np.sin(a), np.cos(a), 0], [0, 0, 1]])
        
        # Rotate with respect to the line point
        self.pcd.rotate(R_a,center = (line[0,0],line[0,1],0))
        
        
    def dbscan(self):
        ''' Performs a density based scan of pcd and changes the colors to the different clusters.
        
        For sampled mesh pcds this process can't be performed due to voxels properties.
        '''
        with o3d.utility.VerbosityContextManager(
                o3d.utility.VerbosityLevel.Debug) as cm:
            labels = np.array(
                self.pcd.cluster_dbscan(eps=0.03, min_points=30, print_progress=True))
        
        max_label = labels.max()
        print(f"point cloud has {max_label + 1} clusters")
        colors = plt.get_cmap("tab20")(labels / (max_label if max_label > 0 else 1))
        colors[labels < 0] = 0
        self.pcd.colors = o3d.utility.Vector3dVector(colors[:, :3])


if __name__ == '__main__':
    
    pcd = o3d.io.read_point_cloud(r"C:\Users\lfcas\Documents\Internship\3D_Feature_Extract\RESULTS\None densified incremental\sfm.ply")
    pointcloud = PointCloud(pcd)
    pointcloud.outlier_removal(nb_neighbors=20, std_ratio=1)
    
    # Alligning pcd with floor and croping
    pointcloud.floor_alignment()
    pointcloud.crop_dim()
    pointcloud.outlier_removal(nb_neighbors=20, std_ratio=1.5)
    pointcloud.x_alignment()
    # pointcloud.dbscan()
    
    pointcloud.display()
    
    #utils.save_pcd(r'C:\Users\lfcas\Documents\Internship\3D_Feature_Extract\pcd_2.ply', pointcloud.pcd)
    
      

 





