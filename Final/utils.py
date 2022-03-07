# -*- coding: utf-8 -*-
"""
things
"""

import numpy as np
import open3d as o3d

def display_geo(pcd):
    '''
    Display multiple pointclouds with corresponding bounding boxes
    Parameters
    ----------
    pcd : LIST
        All pointclouds that need to be printed.

    Returns
    -------
    None.

    '''
    #  draw open3d Coordinate system and bounding boxes
    axis_pcd = o3d.geometry.TriangleMesh.create_coordinate_frame(size=1, origin=[0, 0, 0])
    
    viewer = o3d.visualization.Visualizer()
    viewer.create_window(width = 960, height = 540)
    
    for p in pcd:
        # Show oriented Box
        # obb = p.get_oriented_bounding_box()
        # viewer.add_geometry(obb)
        
        # Show axis alligned box
        aabox = p.get_axis_aligned_bounding_box()
        viewer.add_geometry(aabox)
        
        # Show geometry
        viewer.add_geometry(p)
    
    viewer.add_geometry(axis_pcd)
    opt = viewer.get_render_option()
    opt.show_coordinate_frame = False
    opt.background_color = np.asarray([0.5, 0.5, 0.5])
    viewer.run()
    viewer.destroy_window()
    print(pcd)

def display_inlier_outlier(cloud, ind):
    ''' Displays the inlier and outlier points of the point clod
    NOT WORKING- Crashes
    
    Args:
        cloud: point cloud
        ind: indices to show
    '''
    inlier_cloud = cloud.select_by_index(ind)
    outlier_cloud = cloud.select_by_index(ind, invert=True)

    print("Showing outliers (red) and inliers (gray): ")
    outlier_cloud.paint_uniform_color([1, 0, 0])
    print(f'Outliers are a {outlier_cloud}')
    inlier_cloud.paint_uniform_color([0.8, 0.8, 0.8])
    print(f'Inliers are a {inlier_cloud}')
    display_geo([outlier_cloud, inlier_cloud])
    
def save_pcd(name, pcd):
    o3d.io.write_point_cloud(name, pcd)



if __name__ =='__main__':
    # mesh= o3d.io.read_tetra_mesh(r'C:\Users\lfcas\Documents\Internship\3D_Feature_Extract\mesh.obj')
    # print(mesh)
    
    # print("Try to render a mesh with normals (exist: " +
    #       str(mesh.has_vertex_normals()) + ") and colors (exist: " +
    #       str(mesh.has_vertex_colors()) + ")")
    pass
    
    # display_pcd(mesh)