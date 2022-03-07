#pragma once

#include <iostream>
#include <thread>
#include <vector>
#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/search/search.h>
#include <pcl/search/kdtree.h>
#include <pcl/visualization/cloud_viewer.h>
#include <pcl/filters/filter_indices.h> // for pcl::removeNaNFromPointCloud
#include <pcl/segmentation/region_growing_rgb.h>
#include <pcl/io/ply_io.h>
#include <string>
#include <pcl/filters/extract_indices.h>

using namespace std::chrono_literals;

//Name Min cut function and file saver
std::vector <pcl::PointIndices> Min_Cut(pcl::PointCloud <pcl::PointXYZRGB>::Ptr pcd, const std::vector<int>& inliers, std::vector<double> params);

int save_labels(std::vector<std::string> labels, std::vector<std::vector<int>> final_clusters);