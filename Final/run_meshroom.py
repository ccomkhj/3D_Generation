# -*- coding: utf-8 -*-

import os
import time

def run_meshroom(base_dir, images_name, graph_name, cache_name, force = False):
    """
    Runs Meshroom custom 3D reconstruction pipeline on provided image folder, a Publish node must be included to the 
    .mg graph were the intended to process mesh .obj file and pcd .ply file are connected.
    
    Parameters
    ----------
    base_dir : STRING
        Base directory 
    images_name : STRING
        Name of folder with input images.
    graph_name : STRING
        Name of meshroom graph file (when creating from Meshroom UI)
    cache_name : STRING
        Name of meshroom cache folder.

    force : BOOLEAN, optional
        Set as true if the computations wants to be forced. The default is False.

    Returns
    -------
    output_dir : STRING
    Directory for the outputted mesh. Used for further processing.

    """
    #command building
    command = base_dir + 'Meshroom-2021.1.0\meshroom_batch.exe'
    command += ' --input ' + base_dir + images_name
    command += ' --pipeline ' + base_dir + graph_name
    command += ' --cache ' + base_dir + cache_name
    
    #Setting output to the corresponding place
    output_dir  = base_dir + 'Meshes\\' + str(int(time.time())) 
    command += ' --output ' + output_dir
    
    #Force computation in any case of errors
    if force == True:
        command += ' --forceCompute'
    
    os.system("start /wait cmd /c " + command)
    return output_dir

if __name__ == '__main__':
    base_dir = r"C:\Users\lfcas\Documents\Internship\Final\\"
    images_dir = 'images'
    graph_dir = 'graph_1.mg'
    cache_dir = 'MeshroomCache'
    
    ##Compute Mesh from meshroom graph pipeline.
    # This line will create many copies if used multiple times, comment when debugging.
    mesh_dir = run_meshroom(base_dir,images_dir, graph_dir, cache_dir, force = True)

    
    print('The mesh was created and stored at ' + mesh_dir)
