# -*- coding: utf-8 -*-
""" Tester
Temporal Tester of all code snipets.

"""

# from pprint import pprint as pp
import view 
import match
from sfm import SFM
import os
import numpy as np
import logging
import pyvista as pv


if __name__ == '__main__':
    
    root_path = r'C:\Users\lfcas\Documents\Internship\Plants\Fountain'
    logging.basicConfig(level=logging.DEBUG)
    
    n = 4
    views = view.create_views(root_path, n)
    for v in views:
        v.create_features()
    logging.info('\n')
    
    matches = match.create_matches(views)
    logging.info('\n')
    
        
    K = np.loadtxt(os.path.join(root_path, 'images', 'K.txt'))
    
    structure = SFM(views, matches, K)
    structure.reconstruct()
        
    # pp(K)
    # print(views)

