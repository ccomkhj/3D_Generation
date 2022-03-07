
#include "main.h"

// Main function of point cloud labeller algorithm based on pcl segmentation. 
// The required options to run are:
// -dir directory of pcd
// -pcd pcd name with extension
// 
// Optional:
// -dt Distance Threshold (Color_RGS)
// -pct Point Color Threshold (Color_RGS)
// -rct Region Color Threshold (Color_RGS)
// -min_cs Minimum Cluster Size (Color_RGS)
// -sigma Sigma (Min_cut)
// -radius Radius (Min_cut)
// -nn Number of Neighbors (Min_cut)
// -sw Source weight (Min_cut)
//


int main(int argc, char** argv)
{

	// Using argument parser to get the default or inputed parameters.
	std::vector<double> params;
	std::string pcd;

	std::tuple<std::vector<double>, std::string> args;
	args = arg_parser(argc, argv);

	//Unpacking parameters and pcd file name
	params = std::get<0>(args);
	pcd = std::get<1>(args);


	Color_RGS(pcd, params);

	return 0;
}