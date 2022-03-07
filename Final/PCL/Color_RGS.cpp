
#include "Color_RGS.h"

int Color_RGS(std::string pcd, std::vector<double> params)
{

	// initialize variables
	pcl::search::Search <pcl::PointXYZRGB>::Ptr tree(new pcl::search::KdTree<pcl::PointXYZRGB>);


	// Load PCD file return -1 in case of failure
	pcl::PointCloud <pcl::PointXYZRGB>::Ptr cloud(new pcl::PointCloud <pcl::PointXYZRGB>);
	if (pcl::io::loadPCDFile <pcl::PointXYZRGB>(pcd, *cloud) == -1)
	{
		std::cout << "Cloud reading failed." << std::endl;
		return (-1);
	}
	else {
		std::cout << "Cloud reading successful." << std::endl;
	}

	// Initialize more variables and remove potential NaN values
	pcl::IndicesPtr indices(new std::vector <int>);
	pcl::removeNaNFromPointCloud(*cloud, *indices);

	// Instatiation of RGS, designates point types
	pcl::RegionGrowingRGB<pcl::PointXYZRGB> reg;
	reg.setInputCloud(cloud);
	reg.setIndices(indices);
	reg.setSearchMethod(tree);

	// Loading Parameters
	reg.setDistanceThreshold(params[0]);
	reg.setPointColorThreshold(params[1]);
	reg.setRegionColorThreshold(params[2]);
	reg.setMinClusterSize(params[3]);

	// Execution of Color RGS
	std::cout << "Computing Color_RGS." << std::endl;
	std::vector <pcl::PointIndices> clusters;
	reg.extract(clusters);
	

	// Verbosity: Visualization of Color_RGS output
	pcl::PointCloud <pcl::PointXYZRGB>::Ptr colored_cloud = reg.getColoredCloud();
	pcl::visualization::CloudViewer viewer("Point Cloud viewer");
	viewer.showCloud(colored_cloud);
	std::cout << "The result of the Colored_RGS is shown" << std::endl;
	std::cout << "Number of clusters is equal to " << clusters.size() << std::endl << std::endl;

	// Explanation of Labelling Procedure
	std::cout << "For labelling the computed pcds please pay attention to the following: " << std::endl;
	std::cout << "#1 For plants point clouds always use the same name for the type of plant" << std::endl;
	std::cout << "#2 For non plant point clouds label them as 'misc'" << std::endl;
	std::cout << "#3 The algorithm is case sensitive, always use lower case" << std::endl;
	std::cout << "#4 For points clouds which are not clear use the word 'skip' and the algorithm will not take them into account" << std::endl << std::endl;
	std::cout << "If the point clouds have poor quality consider increasing the sample size of the mesh in the python code" << std::endl;
	std::cout << "If the algorithm takes too long to compute the segmentation consider the opposite" << std::endl << std::endl;

	// Initialize labelling variables
	std::vector<std::string> labels;
	std::string label;
	std::vector<std::vector<int>> final_clusters;
	//std::cin.ignore();
	
	for (int i = 0; i < 2; i++) // i < clusters.size(), reduce this when debugging
	{
		// Out vector of Min_cut result
		std::vector<int> out_vector;
		std::size_t counter2 = 0;

		// creating a int vector with the foreground indices.
		std::vector<int> c_vector;
		std::size_t counter = 0;


		while (counter < clusters[i].indices.size())
		{
			c_vector.push_back(clusters[i].indices[counter]);
			counter++;
		}
		

		// Call for min cut algorithm
		std::cout << "Computing Min_Cut on cluster number " << i << std::endl;
		std::vector <pcl::PointIndices> min_clusters;
		min_clusters = Min_Cut(cloud, c_vector, params);
	
		// Showing min-cut result size
		std::cout << "Point Cloud " << i << " has " << min_clusters[0].indices.size() << " points." << std::endl;

		//Filter point cloud to get colorized pcd output of min_cut.
		while (counter2 < min_clusters[0].indices.size())
		{
			out_vector.push_back(min_clusters[0].indices[counter2]);
			counter2++;
		}

		// Filter points from main pcd
		pcl::PointIndices::Ptr fInliers(new pcl::PointIndices);
		fInliers->indices = out_vector;
		pcl::PointCloud<pcl::PointXYZRGB>::Ptr filtered_pcd(new pcl::PointCloud<pcl::PointXYZRGB>());
		pcl::ExtractIndices<pcl::PointXYZRGB> filter;
		filter.setInputCloud(cloud);
		filter.setIndices(fInliers);
		filter.filter(*filtered_pcd);
		
		//Show min_cut output pcd 
		viewer.showCloud(filtered_pcd);

		//Ask for label
		std::cout << "Provide a label to the shown point cloud: ";

		std::getline(cin,label);
		
		//skip the point cloud if it was labeled as poor quality
		if (label != "skip") {
			
			labels.push_back(label);
			final_clusters.push_back(out_vector);
			std::cout << "Saved label" << std::endl;
		}
		else {
			std::cout << "Skipped label" << std::endl;
		}

		std::cout << std::endl;
		
		
	}

	std::cout << std::endl;
	save_labels(labels, final_clusters);

	return 0;
}