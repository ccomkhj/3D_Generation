""" 

Common tools used in the implementation of 3D Reconstruction.

"""

import numpy as np
import cv2


def get_keypoints_from_indices(keypoints1, index_list1, keypoints2, index_list2):
    """ 
    Filters a list of keypoints based on the indices given.
    
    Args: 
        ketpoints1:
        index_list1:
        keypoints2:
        index_list2:
            
    Returns:
        points1:
        points2:
    
    """ 
    points1 = np.array([kp.pt for kp in keypoints1])[index_list1]
    points2 = np.array([kp.pt for kp in keypoints2])[index_list2]
    
    return points1, points2


def get_3D_point(u1, P1, u2, P2):
    """
    Solves for 3D camera point using homogeneous 2D points and the respective 
    camera matrices using Single Value Decomposition (SVD)
    
    Args:
        u1:2D point in Camera 1
        P1: Camera 1 Matrix
        u2: 2D point in Camera 2
        P2: Camera 2 Matrix
        
    Returns:
        X[1]: 3D point
    """
    A = np.array([[u1[0] * P1[2, 0] - P1[0, 0], u1[0] * P1[2, 1] - P1[0, 1], u1[0] * P1[2, 2] - P1[0, 2]],
                  [u1[1] * P1[2, 0] - P1[1, 0], u1[1] * P1[2, 1] - P1[1, 1], u1[1] * P1[2, 2] - P1[1, 2]],
                  [u2[0] * P2[2, 0] - P2[0, 0], u2[0] * P2[2, 1] - P2[0, 1], u2[0] * P2[2, 2] - P2[0, 2]],
                  [u2[1] * P2[2, 0] - P2[1, 0], u2[1] * P2[2, 1] - P2[1, 1], u2[1] * P2[2, 2] - P2[1, 2]]])

    B = np.array([-(u1[0] * P1[2, 3] - P1[0, 3]),
                  -(u1[1] * P1[2, 3] - P1[1, 3]),
                  -(u2[0] * P2[2, 3] - P2[0, 3]),
                  -(u2[1] * P2[2, 3] - P2[1, 3])])

    X = cv2.solve(A, B, flags=cv2.DECOMP_SVD)
    return X[1]


def compute_F(view1, view2, match_object):
    """
    Computes fundamental matrix using RANSAC and removes outliers inside
    the match class object
    
    Args:
        View1: class object containing all the camera 1 info
        View2: class object containing all the camera 2 info
        Match_Object: class object containing both view's keypoint matches
        
    Returns:
        F: Fundamental Matrix
        
    """
    pixel_points1, pixel_points2 = get_keypoints_from_indices(keypoints1=view1.keypoints,
                                                              keypoints2=view2.keypoints,
                                                              index_list1=match_object.indices1,
                                                              index_list2=match_object.indices2)
    
    F, mask = cv2.findFundamentalMat(pixel_points1, pixel_points2, method=cv2.FM_RANSAC,
                                     ransacReprojThreshold=0.9, confidence=0.99)
    
    mask = mask.astype(bool).flatten()
    
    #Filters the inliers and assigns them inside the match_object class
    match_object.inliers1 = np.array(match_object.indices1)[mask]
    match_object.inliers2 = np.array(match_object.indices2)[mask]

    return F


def calculate_reprojection_error(point_3D, point_2D, K, R, t):
    """
    Calculates the reprojection error for a 3D point by 
    projecting it back into the image plane
    
    Args: 
        point_3D: 3D point coordinates
        point_2D: 2D point coordinates
        K: Intrinsic Camera Matrix
        R: Camera Rotation Matrix
        t: Camera Translation
        
    Returns:
        error: Calculated Reprojection Error
    """
    reprojected_point = K.dot(R.dot(point_3D) + t)
    reprojected_point = cv2.convertPointsFromHomogeneous(reprojected_point.T)[:, 0, :].T
    error = np.linalg.norm(point_2D.reshape((2, 1)) - reprojected_point)
    
    return error

def get_camera_from_E(E):
    """
    Calculates rotation and translation of Camera from essential matrix 
    
    Args:
        E: Essential Matrix
        
    Returns: 
        R1: Rotation Matrix of Camera 1
        R2: Rotation Matrix of Camera 2
        t1: Translation of Camera 1
        t2: Translation of Camera 2
    """
    W = np.array([[0, -1, 0], [1, 0, 0], [0, 0, 1]])
    W_t = W.T
    u, w, vt = np.linalg.svd(E)

    R1 = u @ W @ vt
    R2 = u @ W_t @ vt
    t1 = u[:, -1].reshape((3, 1))
    t2 = - t1
    
    return R1, R2, t1, t2


def check_determinant(R):
    """
    Validates the rotation matrices by use of their determinant.
        
    Args:
        R: Rotation Matrix
    
    Returns:
        True or False
    """
    if np.linalg.det(R) + 1.0 < 1e-9:
        return False
    else:
        return True


def check_triangulation(points, P):
    """
    Checks Triangulation by calculating whether reconstructed points lie 
    in front of the camera.
    
    Args:
        points: reconstructed points
        P: Projection Matrix
    
    Return:
        True or False
    """
    P = np.vstack((P, np.array([0, 0, 0, 1])))
    reprojected_points = cv2.perspectiveTransform(src=points[np.newaxis], m=P)
    z = reprojected_points[0, :, -1]
    if (np.sum(z > 0)/z.shape[0]) < 0.75:
        return False
    else:
        return True