# -*- coding: utf-8 -*-
""" 
    
Class used to manage the different views and it's corresponding function to 
only use root path.

"""

import os 
import sys
import pickle
import cv2
import numpy as np
import glob
import logging

    
def create_views(root_path, n, image_format='jpg'):
    """
    Loops through the images and creates an array of view objects using only
    the root folder path.
        
    Args:
        root_path: Folder Containing all the object's data
        n: number of images to take from root_path
        image_format: Format of the images, default = jpg
        
    Returns:
        views: list of class objects containing image information.
            
    """

    logging.info('Creating View objects of '+ root_path)    

    feature_path = False
    
    
    if os.path.exists(os.path.join(root_path, 'features')):
        feature_path = True
        # logging.info("Existing feature folder: " + os.path.join(root_path, 'features'))

    image_paths = sorted(glob.glob(os.path.join(root_path, 'images', '*.' + image_format)))
    
    views = []
    for image_path in image_paths[0:n]:
        views.append(View(image_path, root_path, feature_path=feature_path))

    return views



class View:
    """ 
    Represents an image used in the reconstruction
    
    Args:
        root_path: Root directory of project folder
        image_path: name of image folder within project
        feature_path: Directory of computed features
        feature_type: 
            Type of feature detector used
            Can be: sift, surf or orb
    
    self:
        
    """
    def __init__(self, image_path, root_path, feature_path, feature_type='sift'):
        
        self.name = image_path[image_path.rfind('\\') + 1:-4]  #image complete path without extension
        self._image = cv2.imread(image_path)  # numpy array of the image
        self.keypoints = []  # list of keypoints obtained from feature extraction
        self.descriptors = []  # list of descriptors obtained from feature extraction
        self.feature_type = feature_type  # feature extraction method
        self.root_path = root_path  # root directory containing the image folder
        self.R = np.zeros((3, 3), dtype=float)  # rotation matrix for the view
        self.t = np.zeros((3, 1), dtype=float)  # translation vector for the view
        
        # print(self.name)
        # print(os.path.join(self.root_path, 'features', self.name + '.pkl'))
        

    def _extract_features(self):
        """ 
        INTERNAL FUNCTION: Extracts features from the image. Available feature_types are 'sift',
        'surf' and 'orb'
        
        Creates:
            self._keypoints
            self.descriptors
        
        """
        if self.feature_type == 'sift':
            detector = cv2.xfeatures2d.SIFT_create()
        elif self.feature_type == 'surf':
            detector = cv2.xfeatures2d.SURF_create()
        elif self.feature_type == 'orb':
            detector = cv2.ORB_create(nfeatures=1500)
        else:
            logging.error("Admitted feature types are SIFT, SURF or ORB")
            sys.exit(0)

        self.keypoints, self.descriptors = detector.detectAndCompute(self._image, None)
        logging.info("Computed features for image %s", self.name)
        
        self._write_features() #Saves features in file
        
        
    def _write_features(self):
        """
        INTERNAL FUNCTION: Stores computed features to pkl files. 
        The files are written inside a features directory inside the root directory
        
        """
        if not os.path.exists(os.path.join(self.root_path, 'features')):
            os.makedirs(os.path.join(self.root_path, 'features'))

        temp_array = []
        for idx, point in enumerate(self.keypoints):
            temp = (point.pt, point.size, point.angle, point.response, point.octave, point.class_id,
                    self.descriptors[idx])
            temp_array.append(temp)

        with open(os.path.join(self.root_path, 'features', self.name + '.pkl'), 'wb') as features_file:
            pickle.dump(temp_array, features_file)
       
        
        
    def create_features(self):
        """ 
        Reads features stored in files.
        Feature files have filenames corresponding to image names without extensions.
        If the file is not found the features are computed from scratch and read.
        
        Creates:
            self._keypoints
            self.descriptors
        """
        try:
            features = pickle.load(open(os.path.join(self.root_path, 'features', self.name + '.pkl'), "rb"))
            logging.info("Reading features from file for image %s", self.name)
            
                        
            keypoints = []
            descriptors = []

            for point in features:
                keypoint = cv2.KeyPoint(x=point[0][0], y=point[0][1], _size=point[1], _angle=point[2],
                                        _response=point[3], _octave=point[4], _class_id=point[5])
                descriptor = point[6]
                keypoints.append(keypoint)
                descriptors.append(descriptor)

            self.keypoints = keypoints
            self.descriptors = np.array(descriptors)  # convert descriptors into n x 128 numpy array
            
        except FileNotFoundError:
            logging.error("Pkl file not found for image %s. Computing from scratch", self.name)
            self._extract_features()
            logging.info('Features Created')
            
        


