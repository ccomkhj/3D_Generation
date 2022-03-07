# -*- coding: utf-8 -*-
""" Merging of mesh and point cloud preprocessing classes.

"""
import open3d as o3d
import numpy as np
import matplotlib.pyplot as plt
import utils 
from sklearn import linear_model

class Scene:
    ''' Class containing the functions and management for preprocessing the mesh and pcd of a scene.
    
    Args: 
        mesh: open3d Trianglemesh
        pcd: open3d Point Cloud
        base_dir: base directory where to store the processed pcd and mesh.
        n_points: points to sample the mesh for relevant preprocessing steps like x_alignment.
        scaling_factor: scaling factor for the real distance measurements.
        
    
    '''
    def __init__(self, mesh, pcd, base_dir, n_points= 100000, scaling_factor=1):
        self.mesh = mesh
        self.scaling_factor = scaling_factor    
        self.pcd = pcd
        self.n_points = n_points
        self.directory = base_dir
    
    
    def display_mesh(self):
        '''Display current state of mesh'''
        utils.display_geo([self.mesh])
        
               
    def display_pcd(self):
        '''Display current state of pcd'''
        utils.display_geo([self.pcd])
        
        
    def save_mesh(self):
        '''Save current state of mesh, returns directory'''
        dir_st = self.directory + '\processed_mesh.obj'
        o3d.io.write_triangle_mesh(dir_st, self.mesh)
        print("Saved processed_mesh.obj at " + dir_st)
        return dir_st
        
        
    def save_pcd(self):
        '''Save current state of pcd, returns directory'''
        dir_st = self.directory + '\processed_pcd.pcd'
        o3d.io.write_point_cloud(dir_st, self.pcd)        
        print("Saved processed_pcd.pcd at " + dir_st)
        return dir_st
    
    def save_down_pcd(self, voxel_size):
        ''' Save downsampled version of pcd, returns directory
        Parameters: voxel_size: downsampling factor'''
        downpcd = self.pcd.voxel_down_sample(voxel_size = voxel_size)
        dir_st = self.directory + '\downsampled_processed_pcd.pcd'
        o3d.io.write_point_cloud(dir_st, downpcd)        
        print("Saved downsampled_processed_pcd.pcd at " + dir_st)
        return dir_st
    
    
    
    def floor_alignment(self, verbose = False):
        ''' Allign pcd with floor or most populated plane.
        
        Args:
            verbose: displays segmented plane
        '''
        
        # segment plane and create a new pcd of just floor
        floor, inliers = self.pcd.segment_plane(distance_threshold =  0.02, ransac_n = 3, num_iterations = 1000)
        f = self.pcd.select_by_index(inliers)
        
        if verbose == True:
            utils.display_geo([f])
        
        # Translate whole pcd, mesh and floor to floor origin
        origin= f.get_center()
        f.translate(-origin)
        self.pcd.translate(-origin)
        self.mesh.translate(-origin)
        
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
        self.mesh.rotate(R_z,center= (0,0,0))  
        self.mesh.rotate(R_y,center= (0,0,0))
        
        # rotate 180 degrees if the points have negative z value
        avg_z = np.average(np.asarray(self.pcd.points), axis = 0)[2]
        if avg_z < 0:
            R = np.array([[-1,0,0], [0,1,0], [0,0,-1]])
            self.pcd.rotate(R,center= (0,0,0))
            self.mesh.rotate(R,center= (0,0,0))
            
         
    def x_alignment(self, threshold = 1.5, verbose= False):
        
        ''' X-axis allignment.
        Based on a RANSAC model implementation over all the points (x,y) coordinates.
        
        Args:
            threshold: RANSAC threshold. default =1.5
            verbose: plots RANSAC steps if True
        '''   
        #Copy pcd to not overwrite original
        downpcd = self.mesh.sample_points_uniformly(number_of_points= self.n_points)
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
        
        # Try RANSAC at 30, 60 and 90 degrees rotation (helps sklearn algorithm).
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
        self.mesh.rotate(R,center = (0,0,0))
        
        # Get line for highest ransac and compute its angle
        line = all_lines[np.argmax(inliers)]
        a = -np.arctan2((line[1,1]-line[0,1]),(line[1,0]-line[0,0]))
        R_a = np.asarray([[np.cos(a), -np.sin(a), 0], [np.sin(a), np.cos(a), 0], [0, 0, 1]])
        
        # Rotate with respect to the line point
        self.pcd.rotate(R_a,center = (line[0,0],line[0,1],0))
        self.mesh.rotate(R_a,center = (line[0,0],line[0,1],0))
        
        
    def crop_dim(self, dim = 2, ratio = 0.2):
        ''' Crop the pointcloud and mesh with respect to 1 dimension. 
        
        
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
        self.mesh = self.mesh.crop(aabox)
        
        
    def pcd_outlier_removal(self, nb_neighbors, std_ratio, verbose = False):
        ''' Performs open3d Statistical_outlier_remval on pcd
        
        Args:
            nb_neighbors: number of neighbors threshold so that a point is not removed
            std_ratio: distance of points necessary to be count as neighbors
            verbose: boolean to plot the outliers and inliers
        '''
        
        self.pcd, ind = self.pcd.remove_statistical_outlier(nb_neighbors=nb_neighbors,
                                                            std_ratio=std_ratio)
        
        if verbose == True:
            utils.display_inlier_outlier(self.pcd, ind) 
        
if __name__ == '__main__':
    if 'pcd' not in globals():
        base_dir = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\\'
        pcd = o3d.io.read_point_cloud(r"C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\sfm.ply")
        mesh = o3d.io.read_triangle_mesh(r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\mesh.obj',enable_post_processing=True)
    
    scene = Scene(mesh = mesh, pcd= pcd, base_dir = base_dir)
    
    scene.pcd_outlier_removal(nb_neighbors=100, std_ratio=0.6)
    
    # Alligning pcd with floor and croping
    scene.floor_alignment()
    scene.crop_dim()
    scene.pcd_outlier_removal(nb_neighbors=100, std_ratio=0.6)
    scene.x_alignment(threshold = 0.05)
    
    scene.display_pcd()
    # scene.display_mesh()
    # utils.display_geo([scene.mesh,scene.pcd])


        