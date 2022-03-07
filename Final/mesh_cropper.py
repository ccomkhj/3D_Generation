# -*- coding: utf-8 -*-
""" Mesh Cropper function:
    It crops the given mesh into the submeshes specified by a csv file. 

"""

import open3d as o3d
import numpy as np
import pandas as pd
import utils


def mesh_cropper(mesh_dir, pcd_dir, csv_dir, nb_neighbors = 100, std_ratio = 0.6):
    """ Mesh Cropper
    Crops meshes by given indices list, labels them and stores new mesh in .csv base directory.
    
    Parameters
    ----------
    mesh_dir : STRING
        directory of mesh
    pcd_dir : STRING
        directory of point cloud
    csv_dir : STRING
        directory of .csv file
    nb_neighbors : INT
        number of neighbors for statistical outlier removal. default = 100
    std_ratio : Float
        Standard ratio for statistical outlier removal

    Returns
    -------
    None.

    """
    
    ## Load pcd, mesh and csv file
    pcd = o3d.io.read_point_cloud(pcd_dir)
    mesh = o3d.io.read_triangle_mesh(mesh_dir, enable_post_processing=True)
    label_data = pd.read_csv(csv_dir, sep='\n', header = None)
    label_data = label_data[0].str.split(',', expand=True)
    
    # utils.display_geo([pcd])
    
    # replace empty cells with NaN and extract labels
    label_data = label_data.replace(" ",np.nan)
    labels = label_data[0].to_numpy()

    # print(label_data)
    # print(labels)

    # Iteration through list of indices
    for i in range(label_data.shape[0]):
        
        # Extract indices and remove non-nan values, had to change type due to np internal error
        indices = label_data.iloc[i].to_numpy()[1:].astype(float)
        indices = indices[~np.isnan(indices)].astype(int)
        
        # Create sub pcd
        sub_pcd = pcd.select_by_index(indices)
        
        # Remove Outliers
        sub_pcd, _ = sub_pcd.remove_statistical_outlier(nb_neighbors=nb_neighbors, std_ratio = std_ratio)
        
        # Create bounding box to crop
        aabox = sub_pcd.get_axis_aligned_bounding_box()        
        # utils.display_geo([sub_pcd])
        
        # Crop sub_mesh
        sub_mesh = mesh.crop(aabox)
        
        # Center mesh to its center
        center = sub_mesh.get_center()
        sub_mesh.translate(-center)
        
        # Save Mesh with corresponding labels
        s_array = mesh_dir.split("\\") #Getting base direction from mesh directory
        mesh_name = s_array[-1]
        base_dir = mesh_dir[0:(len(mesh_dir)-len(mesh_name))]
        directory = base_dir + "\\" + str(i) + "_" + labels[i] + ".obj"
        o3d.io.write_triangle_mesh(directory, sub_mesh)
        print('File saved at: ' + directory)
        
    
    # print(len(label_data.iloc[0].to_numpy()))
    

    

if __name__ == '__main__':
    mesh_dir = r"C:\Users\lfcas\Documents\Internship\Final\Meshes\1646154083\processed_mesh.obj"
    pcd_dir = r"C:\Users\lfcas\Documents\Internship\Final\Meshes\1646154083\processed_pcd.pcd"
    csv_dir = r"C:\Users\lfcas\Documents\Internship\Final\Meshes\1646154083\labels.csv"
    
    mesh_cropper(mesh_dir, pcd_dir, csv_dir)
    
    
    