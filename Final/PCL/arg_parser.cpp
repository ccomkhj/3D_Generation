
#include <iostream>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <string>
#include <map>
#include <windows.h>
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
#include <tuple>



using std::cout;
using std::endl;

// Simple argument parser, not robust to type errors. It should be used on par with the python code for managing the executable.
// 
//

static enum StringValue {
    evNotDefined,
    p1,
    p2,
    p3,
    p4,
    p5,
    p6,
    p7,
    p8,
    dir,
    pcd
};

static std::map<std::string, StringValue> s_mapStringValues;


std::tuple<std::vector<double>, std::string> arg_parser(int argc, char** argv)
{
    // Enumerating valid strings
    s_mapStringValues["-dt"] = p1;
    s_mapStringValues["-pct"] = p2;
    s_mapStringValues["-rct"] = p3;
    s_mapStringValues["-min_cs"] = p4;
    s_mapStringValues["-sigma"] = p5;
    s_mapStringValues["-radius"] = p6;
    s_mapStringValues["-nn"] = p7;
    s_mapStringValues["-sw"] = p8;
    s_mapStringValues["-dir"] = dir;
    s_mapStringValues["-pcd"] = pcd;
    
    // Default values for parameters (seperated to ease reading code)
    double dt = 10;
    double pct = 6;
    double rct = 5;
    double min_cs = 600;
    double sigma = 0.25;
    double radius = 2.5;
    double nn = 20;
    double sw = 0.8;

    // Concatenating params in a vector
    std::vector<double> params;
    params.push_back(dt);
    params.push_back(pct);
    params.push_back(rct);
    params.push_back(min_cs);
    params.push_back(sigma);
    params.push_back(radius);
    params.push_back(nn);
    params.push_back(sw);


    // Reading inputted parameters
    std::vector <std::string> all_args;
    all_args.assign(argv, argv + argc);


    int counter = 0;

    // directory management variables case dir
    char buf[4096];

    std::string pcd_name;
    const char* directory = 0;

    for (int i = 0; i < argc; i++) {
        switch (s_mapStringValues[all_args[i]]) {
        // Parameter cases
        case p1:
            params[0] = atof(argv[i + 1]);
            counter++;
            break;
        case p2:
            params[1] = atof(argv[i + 1]);
            counter++;
            break;
        case p3:
            params[2] = atof(argv[i + 1]);
            counter++;
            break;
        case p4:
            params[3] = atof(argv[i + 1]);
            counter++;
            break;
        case p5:
            params[4] = atof(argv[i + 1]);
            counter++;
            break;
        case p6:
            params[5] = atof(argv[i + 1]);
            counter++;
            break;
        case p7:
            params[6] = atof(argv[i + 1]);
            counter++;
            break;
        case p8:
            params[7] = atof(argv[i + 1]);
            counter++;
            break;
        
            
        // Directory of pcd and pcd name case
        case dir:
            // Change directory

            directory = argv[i + 1];
            
            if (0 == cd(directory)) {
                std::cout << "Valid directory" << std::endl << std::endl;
            }
            else {
                std::cout << "Couldn't find directory. Program has been terminated." << std::endl << std::endl;
                Sleep(2000);
                exit(1);
            }
            break;

        //store pcd name for the pcl algorithm
        case pcd:
            pcd_name = argv[i + 1];

        }
    }

    if (directory == 0) {
        cout << "No directory of the pcd was provided. Program has been terminated." << endl;
        Sleep(2000);
        exit(1);
    }

    // Verbosity providing all parameters
    cout << "Reading parameters: " << endl;
    cout << "Detected " << counter << " parameters, the remaining are set to their default values:" << endl;
    cout << "Distance Threshold = " << params[0] << endl;
    cout << "Point Color Threshold = " << params[1] << endl;
    cout << "Region Color Threshold = " << params[2] << endl;
    cout << "Minimum Cluster Size = " << params[3] << endl;
    cout << "Sigma = " << params[4] << endl;
    cout << "Radius = " << params[5] << endl;
    cout << "Number of Neighbours = " << params[6] << endl;
    cout << "Source Weight = " << params[7] << endl << endl;





    return {params, pcd_name};
}