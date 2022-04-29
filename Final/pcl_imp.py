# -*- coding: utf-8 -*-


import os

def pcl_imp(exe_dir, pcd_dir, color_RGS = [0,0,0,0], min_cut = [0,0,0,0]):
    """
        Calls the pcl_imp.exe code based on C++.
    This code assumes you have created the C++ environment running pcl correctly and that the build is stable.
    It makes use of both Color-based RGS and Min cut Segmentation in pcl library.
    The most important hyperparameters are:
        Color RGS:
            Distance Threshold
            Pont Color Threshold
            Region Color Threshold
            Minimum Cluster Size
        Min cut:
            Sigma(Distance weight)
            Radius
            Number of Neighbors 
            Source Weightt
    
    Go to the pcl_imp.cpp code for more information how to use the pcl algorithm

    Parameters
    ----------
    exe_dir : STRING
        Direction of the executable
    pcd_dir : STRING
        Complete directory of point cloud (include extension)
    color_RGS : [4,1] VECTOR OF FLOATS
        Color RGS hyperparameters in the order [Distance Threshold, Point Color Threshold, 
                                                Region Color Threshold, Minimum Cluster Size]
    min_cut : [4,1] VECTOR OF FLOATS
        min cut hyperparameters in the order [Sigma, Radius, Number of Neighbors,
                                              Source Weight]

    Returns
    -------
    output_dir : STRING
        Direction of the outputed .csv file.

    """
    command = exe_dir + " "
    
    #Getting base direction and pcd name from pcd file directory, adding them to the command
    s_array = pcd_dir.split("\\")
    pcd_name = s_array[-1]
    base_dir = pcd_dir[0:(len(pcd_dir)-len(pcd_name))]
    
    command += "-dir " + base_dir + " "
    command += r"-pcd " + pcd_name + r" "
    
    
    # Adding options for Color_RGS
    if color_RGS[0]!= 0:
        command+= r"-dt " + str(color_RGS[0]) + r" "
    if color_RGS[1]!= 0:
        command+= r"-pct " + str(color_RGS[1]) + r" "
    if color_RGS[2]!= 0:
        command+= r"-rct " + str(color_RGS[2]) + r" "
    if color_RGS[3]!= 0:
        command+= r"-min_cs " + str(color_RGS[3]) + r" "
    
    # Adding options for Min_Cut
    if min_cut[0]!= 0:
        command+= r"-sigma " + str(min_cut[0]) + r" "
    if min_cut[1]!= 0:
        command+= r"-radius " + str(min_cut[1]) + r" "
    if min_cut[2]!= 0:
        command+= r"-nn " + str(min_cut[2]) + r" "
    if min_cut[3]!= 0:
        command+= r"-sw " + str(min_cut[3]) + r" "
    
    # print(command)
    os.system("start /wait cmd /c " + command)
    
    #.csv file directory
    csv_dir = base_dir + r"\labels.csv"
    
    return csv_dir
    
if __name__ == "__main__":
    exe_dir = r'C:\Users\lfcas\Documents\Internship\Final\PCL\Debug\pcl_imp.exe'

    pcd_dir = r'C:\Users\lfcas\Documents\Internship\Final\Meshes\1646656683\downsampled_processed_pcd.pcd'
    dt = 0
    pct = 0
    rct = 0
    min_cs = 0
    sigma = 0.001
    radius = 0.05
    nn = 100
    sw = 20
    
    color_RGS = [dt, pct, rct, min_cs]
    min_cut = [sigma, radius, nn, sw]
    
    csv_dir = pcl_imp(exe_dir, pcd_dir, color_RGS, min_cut)
    # os.system("start /wait cmd /c " + r"C:/Users/lfcas/Documents/Internship/Final/PCL/Debug/pcl_imp.exe")
    
    