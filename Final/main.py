# -*- coding: utf-8 -*-
"""
    Main program for the 3D reconstruction and segmentation of vertical farms.
"""

from run_meshroom import run_meshroom
from preprocessing import Scene
from pcl_imp import pcl_imp
from mesh_cropper import mesh_cropper

import open3d as o3d

def meshroom_mod(base_dir):
    """ MESHROOM MESH CREATION
    Directories to run Meshroom. Go to the run_meshroom.py or use help command
    for more information about the function. A base directory is used.
    
    """
    
    
    images_name = 'images'
    graph_name = 'graph_1.mg'
    cache_name = 'MeshroomCache'
    
    ## Compute Mesh from meshroom graph pipeline.
    
    scene_base_dir = run_meshroom(base_dir,images_name, graph_name, cache_name)
    # scene_base_dir = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646154083'
    
    print('The mesh and pcd were created and stored at ' + scene_base_dir)
    return scene_base_dir



def preprocessing_mod(scene_base_dir):
    """ OPEN 3D BASED PREPROCESSING
    
    The mesh and pcd are loaded and then preprocessed using the local Scene class. Uncomment display to show both the mesh and pcd.
    go to preprocessing.py for more information on which methods are applied. 
    """
    # Load pcd and mesh 
    pcd_dir = scene_base_dir + r'\sfm.ply'
    mesh_dir = scene_base_dir + r'\mesh.obj'
    
    
    pcd = o3d.io.read_point_cloud(pcd_dir)
    mesh = o3d.io.read_triangle_mesh(mesh_dir,enable_post_processing=True)
    
    #Init Scene class
    scene = Scene(mesh, pcd, scene_base_dir)
    
    # Preprocessing
    scene.pcd_outlier_removal(nb_neighbors=100, std_ratio=0.6)
    scene.floor_alignment()
    scene.crop_dim()
    scene.pcd_outlier_removal(nb_neighbors=100, std_ratio=0.6)
    scene.x_alignment(threshold = 0.05)
    
    #Verbosity
    # scene.display_pcd()
    # scene.display_mesh()
    # utils.display_geo([scene.mesh,scene.pcd])
   
    #Save mesh and pcd
    processed_mesh_dir = scene.save_mesh()
    processed_pcd_dir = scene.save_pcd()
    downsampled_proceseed_pcd_dir = scene.save_down_pcd(voxel_size = 0.02)
    
    return processed_mesh_dir, processed_pcd_dir, downsampled_proceseed_pcd_dir



def pcl_mod(processed_pcd_dir):
    """ PCL BASED SEGMENTATION AND LABELLING
    The processed pcd loaded to the C++ based labelling algoritm.
    This process only makes use of the pcd
    """
    exe_dir = r'C:\Users\lfcas\Documents\Internship\Final\PCL\Debug\pcl_imp.exe' #Executable direction
    
    # defining parameters. If left at 0 the defaults will be chosen
    dt = 0
    pct = 0
    rct = 0
    min_cs = 0
    sigma = 0
    radius = 0
    nn = 0
    sw = 0
    
    #Setting up Vectors of parameters
    color_RGS = [dt, pct, rct, min_cs]
    min_cut = [sigma, radius, nn, sw]
    
    csv_dir = pcl_imp(exe_dir, processed_pcd_dir, color_RGS, min_cut)
    
    return csv_dir



if __name__ == '__main__':
    
    base_dir = r'C:\Users\lfcas\Documents\Internship\Final\\'
    
    # sbd = meshroom_mod(base_dir)
    
    sbd = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683'
    
    
    pmd = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\processed_mesh.obj'
    dppd =r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\downsampled_processed_pcd.pcd'
    # pmd, ppd, dppd= preprocessing_mod(sbd)
    
    
    # csv_dir = pcl_mod(dppd)
    csv_dir = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\labels.csv'
    
    # mesh cropper module has no complex parameters so it is left out, for more info go to mesh_cropper.py or use help function
    mesh_cropper(pmd, dppd, csv_dir)
    
    
    
    
    
    
    