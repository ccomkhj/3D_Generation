
#include "Min_Cut.h"
#include <pcl/common/centroid.h>

std::vector <pcl::PointIndices> Min_Cut(pcl::PointCloud <pcl::PointXYZRGB>::Ptr pcd, const std::vector<int>& inliers, std::vector<double> params)
{
	//Load pcl
	//pcl::PointCloud <pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud <pcl::PointXYZ>);

	//Remove possible NaN values and initialize classes
	pcl::IndicesPtr indices(new std::vector <int>);
	pcl::removeNaNFromPointCloud(*pcd, *indices);

	//Min-Cut instantiation
	pcl::MinCutSegmentation<pcl::PointXYZRGB> seg;
	seg.setInputCloud(pcd);
	seg.setIndices(indices);

	//Extract the foreground points from passed indices

	pcl::PointIndices::Ptr fInliers(new pcl::PointIndices);
	fInliers->indices = inliers;

	pcl::PointCloud<pcl::PointXYZRGB>::Ptr foreground_points(new pcl::PointCloud<pcl::PointXYZRGB>());
	pcl::ExtractIndices<pcl::PointXYZRGB> filter;
	filter.setInputCloud(pcd);
	filter.setIndices(fInliers);
	filter.filter(*foreground_points);

	
	// Calculate the center point of indices
	// 
	pcl::PointXYZRGB centroid;
	centroid.x = 0;
	centroid.y = 0;
	centroid.z = 0;
	for (int i = 0; i < foreground_points->points.size(); i++) {
		centroid.x += foreground_points->points[i].x;
		centroid.y += foreground_points ->points[i].y;
		centroid.z += foreground_points->points[i].z;
	}
	centroid.x = centroid.x * 1.0 / foreground_points->points.size();
	centroid.y = centroid.y * 1.0 / foreground_points->points.size();
	centroid.z = centroid.z * 1.0 / foreground_points->points.size();

	//Create center point cloud 
	pcl::PointCloud<pcl::PointXYZRGB>::Ptr center_point(new pcl::PointCloud<pcl::PointXYZRGB>());
	center_point->points.push_back(centroid);

	// Set foreground as center point 
	seg.setForegroundPoints(center_point);

	// Set foreground as all indexed
	//seg.setForegroundPoints(foreground_points);

	//Loading parameters
	seg.setSigma(params[4]);
	seg.setRadius(params[5]);
	seg.setNumberOfNeighbours(params[6]);
	seg.setSourceWeight(params[7]);


	//Initiate cluster class and extract them
	std::vector <pcl::PointIndices> clusters;
	seg.extract(clusters);


	return clusters;
}