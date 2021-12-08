# -*- coding: utf-8 -*-
"""

Class containing all the matches information and its corresponding managing 
function.

"""
import os
import pickle
import cv2
import logging


def create_matches(views):
    """
    Computes matches between every possible pair of views and stores in a dictionary
    
    Args: 
        views: list of class objects containing image information.
        
    Returns:
        matches: list of class objects containing match information.
    """

    match_path = False

    root_path = views[0].root_path

    if os.path.exists(os.path.join(root_path, 'matches')):
        match_path = True
        
    matches = {}
    for i in range(0, len(views) - 1): # First View
        for j in range(i+1, len(views)): #Second View
            matches[(views[i].name, views[j].name)] = Match(views[i], views[j], match_path)

    return matches


class Match:
    """ 
    Class object that stores feature matches between two views
    
    Args:
        view1: First View class object
        view2: Second View class object
        match_path: where the matches are going to be stored.
        
    self:
    """

    def __init__(self, view1, view2, match_path):

        self.indices1 = []  # indices of the matched keypoints in the first view
        self.indices2 = []  # indices of the matched keypoints in the second view
        self.distances = []  # distance between the matched keypoints in the first view
        self.image_name1 = view1.name  # name of the first view
        self.image_name2 = view2.name  # name of the second view
        self._root_path = view1.root_path  # root directory containing the image folder
        self.inliers1 = []  # list to store the indices of the keypoints from the first view not removed using the fundamental matrix
        self.inliers2 = []  # list to store the indices of the keypoints from the second view not removed using the fundamental matrix
        self._view1 = view1
        self._view2 = view2

        if view1.feature_type in ['sift', 'surf']:
            logging.info('Performing norm L2 matching')
            self.matcher = cv2.BFMatcher(cv2.NORM_L2, crossCheck=True)
        else:
            logging.info('Performing norm HAMMING matching')
            self.matcher = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)

        if not match_path:
            self.get_matches(view1, view2)
        else:
            self.read_matches()
            
            
    def get_matches(self, view1, view2):
        """Extracts feature matches between two views
        
        Args: 
            view1: First view
            view2: Second view
            
        Creates:
            self.indices1
            self.indices2
            self.distances
        """
        matches = self.matcher.match(view1.descriptors, view2.descriptors)
        matches = sorted(matches, key=lambda x: x.distance)

        # store match components in their respective lists
        for i in range(len(matches)):
            self.indices1.append(matches[i].queryIdx)
            self.indices2.append(matches[i].trainIdx)
            self.distances.append(matches[i].distance)

        logging.info("Computed matches between view %s and view %s", self.image_name1, self.image_name2)

        self.write_matches()
        
        
    def write_matches(self):
        """
        Writes matches to a pkl file in the root_path/matches directory
        """
        if not os.path.exists(os.path.join(self._root_path, 'matches')):
            os.makedirs(os.path.join(self._root_path, 'matches'))

        temp_array = []
        for i in range(len(self.indices1)):
            temp = (self.distances[i], self.indices1[i], self.indices2[i])
            temp_array.append(temp)

        with open(os.path.join(self._root_path, 'matches', self.image_name1 + '_' + self.image_name2 + '.pkl'), 'wb') as matches_file:
            pickle.dump(temp_array, matches_file)
        
        
    def read_matches(self):
        """
        Reads matches from pkl file
        
        Creates:
            self.indices1
            self.indices2
            self.distances
        """

        try:
            matches = pickle.load(open(os.path.join(self._root_path, 'matches', self.image_name1 + '_' + self.image_name2 + '.pkl'), "rb" ))
            
            logging.info("Reading matches from file for view pair pair %s %s", self.image_name1, self.image_name2)

            for point in matches:
                self.distances.append(point[0])
                self.indices1.append(point[1])
                self.indices2.append(point[2])      
                
        except FileNotFoundError:
            logging.error("Pkl file not found for match %s_%s. Computing from scratch", self.image_name1, self.image_name2)
            self.get_matches(self._view1, self._view2)
            
        
 
        
    