# 3D_Generation (Pipeline to reconstruct 3D Model)
3. Dec. 2021 (updated)

## Step 1. Apply SfM proposed by Tomasi and Kanade
- Compute Fundamental Matrix from point correspondences using RANSAC
- Solve affine Structure from Motion problem using the Factorization Method

## Step 2. Compute Essentail Matrix from F and K.
- Intrinsic parameters (K) should be known. : Auto Calibration is needed.
- E = K.T * F * K
- Decompose E using SVD to get the second camera matrix P2 
(first camera matrix P1 is assumed at origin - no rotation or translation) [Correct?]

## Step 3. Compute 3D points using triangulation

## Step 4. Apply to Multiple Images

**With two images, we can reconstruct up to a scale factor. However this scale factor will be different for each pair of images.**

### Step 4-1. Apply Iterative Coloset Point (ICP) algorithm
- Triangulate more points and see how they fit into our existing scene geometry.

### Step 4-2 (alternative). Perspective N-Point (PnP) algorithm (AKA Camera pose estimation)
- Solve for the position of a new cameera using the scene points we have already found.
- OpenCV provides solvePnP() and solvePnPRansac()  

## Step 5. Generate a dense 3D reconstruction using Multi View Stereo

**3D model is consistent with the input images?**
- color: do the cameras see the same color? >> only valide for Lambertian surfaces, it is based on a measurement of color variance.

- texture: is the texture around the points the same? >> Multi View Stereo can handle glossy materials, but has problems with shiny objects.

### Step 5-1. Build up the model from the good points. It requires many view otherwise holes appear.

### Step 5-2. Remove the bad points 
- Start from the bounding volume and carve away inconsistent points.
- It requires texture information to get a good geometry.