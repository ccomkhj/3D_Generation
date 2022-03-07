#pragma once
#include <iostream>
#include <vector>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/filters/filter_indices.h> // for pcl::removeNaNFromPointCloud
#include <pcl/segmentation/min_cut_segmentation.h>
#include <string>
#include <pcl/io/ply_io.h>
#include <pcl/filters/extract_indices.h>
