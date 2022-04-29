{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2021.1.0",
        "fileVersion": "1.1",
        "nodesVersions": {
            "Meshing": "7.0",
            "Texturing": "5.0",
            "FeatureExtraction": "1.1",
            "ImageMatchingMultiSfM": "1.0",
            "CameraInit": "4.0",
            "PrepareDenseScene": "3.0",
            "StructureFromMotion": "2.0",
            "FeatureMatching": "2.0",
            "DepthMap": "2.0",
            "MeshFiltering": "3.0",
            "DepthMapFilter": "3.0",
            "ImageMatching": "2.0"
        }
    },
    "graph": {
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "e97a03d6ce555d04831be03f0526b57167a92968"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 331886962,
                        "poseId": 331886962,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024670250.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:08\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.7\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:08\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:08\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 630827313,
                        "poseId": 630827313,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024670236.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:10\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.68\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:10\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:10\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 990320516,
                        "poseId": 990320516,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024670200.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:16\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1.05\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:16\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:16\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1491602576,
                        "poseId": 1491602576,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024670176.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:18\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1.17\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:18\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:18\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2057635294,
                        "poseId": 2057635294,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024670218.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:12\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.7\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:12\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:12\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3277259825,
                        "pxInitialFocalLength": 2795.6889889751546,
                        "pxFocalLength": 2795.6889889751546,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 4.73,
                        "sensorHeight": 3.5475000000000003,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/live_reconstruction_--_--",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1"
                ],
                "useInternalWhiteBalance": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "9e2bbe6c18ee4e766210cc46406a41fc4ebda8a1"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "6391417f2e0b325f66625eb7cfa6525071a39c6a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "ce3ececdc6fb2538da23f48c9a723f3a9fb24169"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "3cad1de1c8aae0d8717586d847f3be16a8130489"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Basic",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": false,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                3521,
                639
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "31254b76f30ba1811c7917518984269afdeeba11"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_5.output}",
                "imagesFolders": [],
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputUndistorted": "{cache}/{nodeType}/{uid0}/*.{outputFileTypeValue}"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                3775,
                655
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 25,
                "split": 9
            },
            "uids": {
                "0": "64a2902202c835c97640aa1a48fe520e98b12a80"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "sgmMaxTCams": 10,
                "sgmWSH": 4,
                "sgmGammaC": 5.5,
                "sgmGammaP": 8.0,
                "refineMaxTCams": 6,
                "refineNSamplesHalf": 150,
                "refineNDepthsToRefine": 31,
                "refineNiters": 100,
                "refineWSH": 3,
                "refineSigma": 15,
                "refineGammaC": 15.5,
                "refineGammaP": 8.0,
                "refineUseTcOrRcPixSize": false,
                "exportIntermediateResults": false,
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                4015,
                655
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 25,
                "split": 3
            },
            "uids": {
                "0": "ee0d0886080cc228acb1d4d8d456cf945e6e14b0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                4254,
                638
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e7f21532d23388d90c1d84f33e14050e79687db5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.obj",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                4563,
                660
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "fb9ea49dd807794cbcf729ad8bb0de6dde0fc873"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.obj"
            }
        },
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                4791,
                592
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "5da4a6840316f0cb906a7b4b7b64b8763bc88481"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "textureSide": 8192,
                "downscale": 2,
                "outputTextureFileType": "png",
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "processColorspace": "sRGB",
                "correctEV": false,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.obj",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.{outputTextureFileTypeValue}"
            }
        },
        "CameraInit_2": {
            "nodeType": "CameraInit",
            "position": [
                0,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "37e7cad3654d31e1623633f9af97dd6618484068"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 201543212,
                        "poseId": 201543212,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025821668.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:21\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.45\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:21\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:21\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 619781285,
                        "poseId": 619781285,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025821620.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:36\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.7\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:36\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:36\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 752109146,
                        "poseId": 752109146,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025821647.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:31\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.71\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:31\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:31\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1075680071,
                        "poseId": 1075680071,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025821683.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:10\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.8\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:10\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:10\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1139587897,
                        "poseId": 1139587897,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025821698.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:07\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.72\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:07\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:07\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3277259825,
                        "pxInitialFocalLength": 2795.6889889751546,
                        "pxFocalLength": 2795.6889889751546,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 4.73,
                        "sensorHeight": 3.5475000000000003,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/live_reconstruction_--_--",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1"
                ],
                "useInternalWhiteBalance": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_2": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                160
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "038dad75bb81cc0eb4aa909c8665e22e069113c4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_2.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatchingMultiSfM_1": {
            "nodeType": "ImageMatchingMultiSfM",
            "position": [
                1000,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 10,
                "split": 1
            },
            "uids": {
                "0": "e5dcdd4d16affee8fd4b31a7c585a9757e40599a"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_2.input}",
                "inputB": "{StructureFromMotion_1.output}",
                "featuresFolders": [
                    "{FeatureExtraction_2.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "matchingMode": "a/a+a/b",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt",
                "outputCombinedSfM": "{cache}/{nodeType}/{uid0}/combineSfM.sfm"
            }
        },
        "FeatureMatching_2": {
            "nodeType": "FeatureMatching",
            "position": [
                1200,
                160
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 10,
                "split": 1
            },
            "uids": {
                "0": "f7b877ba07e68aed9a50898da62ce346e770e455"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatchingMultiSfM_1.outputCombinedSfM}",
                "featuresFolders": "{ImageMatchingMultiSfM_1.featuresFolders}",
                "imagePairsList": "{ImageMatchingMultiSfM_1.output}",
                "describerTypes": "{FeatureExtraction_2.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_2": {
            "nodeType": "StructureFromMotion",
            "position": [
                1392,
                160
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 10,
                "split": 1
            },
            "uids": {
                "0": "f53f413dda2246f4567fd0059a9da656344932be"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_2.input}",
                "featuresFolders": "{FeatureMatching_2.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_2.output}"
                ],
                "describerTypes": "{FeatureMatching_2.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Basic",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": false,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "CameraInit_3": {
            "nodeType": "CameraInit",
            "position": [
                0,
                320
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "8d0fb11907fe7063326e48dad026413641615053"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 173289447,
                        "poseId": 173289447,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025524182.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:59\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.41\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:59\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:59\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 330375126,
                        "poseId": 330375126,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025524196.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:54\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.59\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:54\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:54\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 948279985,
                        "poseId": 948279985,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025524168.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:02\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.43\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:02\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:02\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1255783711,
                        "poseId": 1255783711,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025524153.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:23:05\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.54\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:23:05\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:23:05\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1800197628,
                        "poseId": 1800197628,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025524209.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:50\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.93\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:50\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:50\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3277259825,
                        "pxInitialFocalLength": 2795.6889889751546,
                        "pxFocalLength": 2795.6889889751546,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 4.73,
                        "sensorHeight": 3.5475000000000003,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/live_reconstruction_--_--",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1"
                ],
                "useInternalWhiteBalance": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_3": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                320
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "fa172684e48b0a36daf88374ea2cf888a88fc8bb"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_3.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatchingMultiSfM_2": {
            "nodeType": "ImageMatchingMultiSfM",
            "position": [
                1600,
                320
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 15,
                "split": 1
            },
            "uids": {
                "0": "293b23341a3ba2dc1c94fd7a4f3cb823013badae"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_3.input}",
                "inputB": "{StructureFromMotion_2.output}",
                "featuresFolders": [
                    "{FeatureExtraction_3.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "matchingMode": "a/a+a/b",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt",
                "outputCombinedSfM": "{cache}/{nodeType}/{uid0}/combineSfM.sfm"
            }
        },
        "FeatureMatching_3": {
            "nodeType": "FeatureMatching",
            "position": [
                1800,
                320
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 15,
                "split": 1
            },
            "uids": {
                "0": "c946c3fe5e55ddf1a478794e277e624acd173658"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatchingMultiSfM_2.outputCombinedSfM}",
                "featuresFolders": "{ImageMatchingMultiSfM_2.featuresFolders}",
                "imagePairsList": "{ImageMatchingMultiSfM_2.output}",
                "describerTypes": "{FeatureExtraction_3.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_3": {
            "nodeType": "StructureFromMotion",
            "position": [
                2000,
                320
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 15,
                "split": 1
            },
            "uids": {
                "0": "db99938a14dd41f4ad17be371b78ac108536e0a3"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_3.input}",
                "featuresFolders": "{FeatureMatching_3.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_3.output}"
                ],
                "describerTypes": "{FeatureMatching_3.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Basic",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": false,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "CameraInit_4": {
            "nodeType": "CameraInit",
            "position": [
                0,
                480
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "45d7890ccce85e3a004ce2f363ba2835c96334c9"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 918162086,
                        "poseId": 918162086,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025245852.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:45\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.88\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:45\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:45\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 942067485,
                        "poseId": 942067485,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025245872.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:43\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.82\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:43\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:43\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1047760980,
                        "poseId": 1047760980,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024947670.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:20\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:20\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:20\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1061445929,
                        "poseId": 1061445929,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025245824.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:48\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.83\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:48\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:48\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1803706346,
                        "poseId": 1803706346,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025245888.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:35\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1.1\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:35\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:35\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3277259825,
                        "pxInitialFocalLength": 2795.6889889751546,
                        "pxFocalLength": 2795.6889889751546,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 4.73,
                        "sensorHeight": 3.5475000000000003,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/live_reconstruction_--_--",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1"
                ],
                "useInternalWhiteBalance": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_4": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                480
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "5e8dcd9b96a1a353e86f9f576e9f12fa8cddec91"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_4.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatchingMultiSfM_3": {
            "nodeType": "ImageMatchingMultiSfM",
            "position": [
                2200,
                480
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 20,
                "split": 1
            },
            "uids": {
                "0": "1e654db505985984e13b972f49d5964447af23a0"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_4.input}",
                "inputB": "{StructureFromMotion_3.output}",
                "featuresFolders": [
                    "{FeatureExtraction_4.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "matchingMode": "a/a+a/b",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt",
                "outputCombinedSfM": "{cache}/{nodeType}/{uid0}/combineSfM.sfm"
            }
        },
        "FeatureMatching_4": {
            "nodeType": "FeatureMatching",
            "position": [
                2400,
                480
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 20,
                "split": 1
            },
            "uids": {
                "0": "2f867877e17b20b14b0bdac7a59348f19f7c764c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatchingMultiSfM_3.outputCombinedSfM}",
                "featuresFolders": "{ImageMatchingMultiSfM_3.featuresFolders}",
                "imagePairsList": "{ImageMatchingMultiSfM_3.output}",
                "describerTypes": "{FeatureExtraction_4.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_4": {
            "nodeType": "StructureFromMotion",
            "position": [
                2600,
                480
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 20,
                "split": 1
            },
            "uids": {
                "0": "a3e6dc09dd567a7410f696c1dd3da9d10a8f20a5"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_4.input}",
                "featuresFolders": "{FeatureMatching_4.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_4.output}"
                ],
                "describerTypes": "{FeatureMatching_4.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Basic",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": false,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "CameraInit_5": {
            "nodeType": "CameraInit",
            "position": [
                0,
                640
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "54c69e12d81fdbfb82e72e446da74b594f314760"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 314274800,
                        "poseId": 314274800,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024947613.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:30\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.87\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:30\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:30\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1164896957,
                        "poseId": 1164896957,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024947656.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:23\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.96\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:23\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:23\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1208988596,
                        "poseId": 1208988596,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024947629.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:28\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1.09\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:28\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:28\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1440441580,
                        "poseId": 1440441580,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640024947643.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:25\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-1.08\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:25\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:25\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1688426276,
                        "poseId": 1688426276,
                        "path": "C:/Users/lfcas/Documents/Internship/live_reconstruction/1640025245903.jpg",
                        "intrinsicId": 3277259825,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.730000\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:20 12:22:33\", \"Exif:ApertureValue\": \"1.85\", \"Exif:BrightnessValue\": \"-0.84\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:20 12:22:33\", \"Exif:DateTimeOriginal\": \"2021:12:20 12:22:33\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"0\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"0\", \"Exif:FocalLengthIn35mmFilm\": \"24\", \"Exif:LightSource\": \"0\", \"Exif:MeteringMode\": \"2\", \"Exif:PhotographicSensitivity\": \"0\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"5\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"4.058\", \"Exif:SubsecTime\": \"\", \"Exif:SubsecTimeDigitized\": \"\", \"Exif:SubsecTimeOriginal\": \"\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"1\", \"FNumber\": \"0\", \"GPS:Altitude\": \"0\", \"GPS:DateStamp\": \"00:00:00\", \"GPS:Latitude\": \"0, 0, 0\", \"GPS:LatitudeRef\": \"\", \"GPS:Longitude\": \"0, 0, 0\", \"GPS:LongitudeRef\": \"\", \"GPS:ProcessingMethod\": \"\", \"GPS:TimeStamp\": \"0, 0, 0\", \"Make\": \"--\", \"Model\": \"--\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:0\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 3277259825,
                        "pxInitialFocalLength": 2795.6889889751546,
                        "pxFocalLength": 2795.6889889751546,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 4.73,
                        "sensorHeight": 3.5475000000000003,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/live_reconstruction_--_--",
                        "principalPoint": {
                            "x": 2016.0,
                            "y": 1512.0
                        },
                        "initializationMode": "estimated",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "locked": false
                    }
                ],
                "sensorDatabase": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\cameraSensors.db",
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1"
                ],
                "useInternalWhiteBalance": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "FeatureExtraction_5": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                640
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 5,
                "split": 1
            },
            "uids": {
                "0": "a098fea3744418c12351a5a864223fe6960f78c7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_5.output}",
                "describerTypes": [
                    "sift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "ImageMatchingMultiSfM_4": {
            "nodeType": "ImageMatchingMultiSfM",
            "position": [
                2800,
                640
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "a54b07cb1bda7b987e2a46e7ac5f584a97c6780e"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_5.input}",
                "inputB": "{StructureFromMotion_4.output}",
                "featuresFolders": [
                    "{FeatureExtraction_5.output}"
                ],
                "method": "VocabularyTree",
                "tree": "C:\\Program Files (x86)\\Meshroom-2021.1.0\\aliceVision\\share\\aliceVision\\vlfeat_K80L3.SIFT.tree",
                "weights": "",
                "matchingMode": "a/a+a/b",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 50,
                "nbNeighbors": 50,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt",
                "outputCombinedSfM": "{cache}/{nodeType}/{uid0}/combineSfM.sfm"
            }
        },
        "FeatureMatching_5": {
            "nodeType": "FeatureMatching",
            "position": [
                3000,
                640
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 25,
                "split": 2
            },
            "uids": {
                "0": "d25462f2e0fc09bc9a40453f78ec6ee15b200f3f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatchingMultiSfM_4.outputCombinedSfM}",
                "featuresFolders": "{ImageMatchingMultiSfM_4.featuresFolders}",
                "imagePairsList": "{ImageMatchingMultiSfM_4.output}",
                "describerTypes": "{FeatureExtraction_5.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_5": {
            "nodeType": "StructureFromMotion",
            "position": [
                3202,
                640
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 25,
                "split": 1
            },
            "uids": {
                "0": "7f4d11670217707361d4b8c656d48d20267c49ad"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_5.input}",
                "featuresFolders": "{FeatureMatching_5.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_5.output}"
                ],
                "describerTypes": "{FeatureMatching_5.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Basic",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "lockAllIntrinsics": false,
                "filterTrackForks": false,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}