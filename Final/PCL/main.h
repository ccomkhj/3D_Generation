#pragma once
#include <pcl/visualization/cloud_viewer.h>
#include <iostream>
#include <pcl/io/io.h>
#include <pcl/io/pcd_io.h>
#include <string>
#include <pcl/io/ply_io.h>
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

#include <windows.h>

//Naming functions
std::tuple <std::vector<double>, std::string> arg_parser(int argc, char** argv);
int Color_RGS(std::string ply, std::vector<double> params);



