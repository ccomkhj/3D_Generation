# -*- coding: utf-8 -*-
"""

Creation of K matrix with use of exif header

Important Information of EXIF Header:
    Focal Length: Distance from camera pinhole to sensor
    F-Number: Ratio b/w focal length and Diameter of entrance pupil
    FocalPlaneResolutionUnit: Pixel density unit
    FocalPlaneXResolution: X pixel density
    FocalPlaneYResolution: Y pixel density
    
    For correct interpretation of the values visit: 
        https://www.media.mit.edu/pia/Research/deepview/exif.html
        
Size of 1/2.4" sensor:
    x: 5.92mm
    y: 4.57mm
"""

from PIL import Image, ExifTags
from pprint import pprint as pp

path1 =r'C:\Users\lfcas\Documents\Internship\3D_Generation\Demo_Felipe\Plants\Drone\images\P1530296.jpg'
path2 =r'C:\Users\lfcas\Documents\Internship\3D_Generation\Demo_Felipe\Plants\Drone\images\P1690312.jpg'


img1 = Image.open(path1)
img2 = Image.open(path2)

exif1 = { ExifTags.TAGS[k]: v for k, v in img1._getexif().items() if k in ExifTags.TAGS }
exif2 = { ExifTags.TAGS[k]: v for k, v in img2._getexif().items() if k in ExifTags.TAGS }

pp(exif1)
pp(exif2)

