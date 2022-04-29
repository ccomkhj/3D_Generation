
#include <vector>
#include <string>
#include <iostream>
#ifdef _WIN32
#include <direct.h>
// MSDN recommends against using getcwd & chdir names
#define cwd _getcwd
#define cd _chdir
#else
#include "unistd.h"
#define cwd getcwd
#define cd chdir
#endif
#include <fstream>

#include <windows.h>


int save_labels(std::vector<std::string> labels, std::vector<std::vector<int>> final_clusters) {
	// Output Current directory where the .csv file will be created
	char tmp[256];
	_getcwd(tmp, 256);
	std::cout << "Saving all labels to labels.csv file at " <<  tmp << std::endl;
	std::ofstream myfile;
	
	// Create .csv file
	myfile.open("labels.csv");

	for (int i = 0; i < labels.size(); i++) {
		myfile << labels[i] << ", ";
		for (int j = 0; j < final_clusters[i].size(); j++) {
			myfile << final_clusters[i][j];
			myfile << ", ";
		}
		myfile << "\n";
	}
	// Save file
	myfile.close();

	std::cout << "Save successful"; 

	// Sleep to let the user read the output in case of external use.
	Sleep(2000);

	return 0;
}