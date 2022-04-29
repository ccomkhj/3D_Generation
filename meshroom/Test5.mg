{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2021.1.0",
        "fileVersion": "1.1",
        "nodesVersions": {
            "PrepareDenseScene": "3.0",
            "DepthMap": "2.0",
            "CameraInit": "4.0",
            "ImageMatching": "2.0",
            "Meshing": "7.0",
            "ConvertSfMFormat": "2.0",
            "DepthMapFilter": "3.0",
            "FeatureExtraction": "1.1",
            "MeshFiltering": "3.0",
            "StructureFromMotion": "2.0",
            "FeatureMatching": "2.0",
            "Texturing": "5.0"
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
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "c8400e72394355b24cb0f4320f0c75048216f8c4"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 305174320,
                        "poseId": 305174320,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091845.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:45\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.46\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:45\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:45\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"80\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0559\", \"Exif:SubsecTimeDigitized\": \"0559\", \"Exif:SubsecTimeOriginal\": \"0559\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 452567340,
                        "poseId": 452567340,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091757.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:17:57\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.84\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:17:57\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:17:57\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0526\", \"Exif:SubsecTimeDigitized\": \"0526\", \"Exif:SubsecTimeOriginal\": \"0526\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 797608898,
                        "poseId": 797608898,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091830.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:30\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.79\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:30\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:30\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0790\", \"Exif:SubsecTimeDigitized\": \"0790\", \"Exif:SubsecTimeOriginal\": \"0790\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 815373441,
                        "poseId": 815373441,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091824.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:24\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.8\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:24\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:24\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0684\", \"Exif:SubsecTimeDigitized\": \"0684\", \"Exif:SubsecTimeOriginal\": \"0684\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 861734653,
                        "poseId": 861734653,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091835.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:35\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.8\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:35\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:35\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0680\", \"Exif:SubsecTimeDigitized\": \"0680\", \"Exif:SubsecTimeOriginal\": \"0680\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 868280244,
                        "poseId": 868280244,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091819.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:19\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:19\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:19\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0741\", \"Exif:SubsecTimeDigitized\": \"0741\", \"Exif:SubsecTimeOriginal\": \"0741\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 906074599,
                        "poseId": 906074599,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091842.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:42\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.5\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:42\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:42\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"80\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0397\", \"Exif:SubsecTimeDigitized\": \"0397\", \"Exif:SubsecTimeOriginal\": \"0397\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1033005299,
                        "poseId": 1033005299,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091814.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:14\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.91\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:14\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:14\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0366\", \"Exif:SubsecTimeDigitized\": \"0366\", \"Exif:SubsecTimeOriginal\": \"0366\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1062123648,
                        "poseId": 1062123648,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091802.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:02\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.88\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:02\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:02\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0344\", \"Exif:SubsecTimeDigitized\": \"0344\", \"Exif:SubsecTimeOriginal\": \"0344\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1251677841,
                        "poseId": 1251677841,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091807.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:07\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.78\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:07\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:07\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0717\", \"Exif:SubsecTimeDigitized\": \"0717\", \"Exif:SubsecTimeOriginal\": \"0717\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1347022495,
                        "poseId": 1347022495,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091827.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:27\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.84\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:27\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:27\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0830\", \"Exif:SubsecTimeDigitized\": \"0830\", \"Exif:SubsecTimeOriginal\": \"0830\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1420674621,
                        "poseId": 1420674621,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091755.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:17:55\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.83\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:17:55\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:17:55\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0753\", \"Exif:SubsecTimeDigitized\": \"0753\", \"Exif:SubsecTimeOriginal\": \"0753\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1522984245,
                        "poseId": 1522984245,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091837.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:37\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.77\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:37\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:37\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"80\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0631\", \"Exif:SubsecTimeDigitized\": \"0631\", \"Exif:SubsecTimeOriginal\": \"0631\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1555846264,
                        "poseId": 1555846264,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091816.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:16\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.94\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:16\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:16\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0711\", \"Exif:SubsecTimeDigitized\": \"0711\", \"Exif:SubsecTimeOriginal\": \"0711\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1702707851,
                        "poseId": 1702707851,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091809.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:09\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.77\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:09\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:09\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0672\", \"Exif:SubsecTimeDigitized\": \"0672\", \"Exif:SubsecTimeOriginal\": \"0672\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1883357695,
                        "poseId": 1883357695,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091800.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:00\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.7\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:00\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:00\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0000\", \"Exif:SubsecTimeDigitized\": \"0000\", \"Exif:SubsecTimeOriginal\": \"0000\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1932772027,
                        "poseId": 1932772027,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091833.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:33\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.84\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:33\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:33\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"6.64\", \"Exif:SubsecTime\": \"0693\", \"Exif:SubsecTimeDigitized\": \"0693\", \"Exif:SubsecTimeOriginal\": \"0693\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.01\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2022234256,
                        "poseId": 2022234256,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091804.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:04\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"3.15\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:04\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:04\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"50\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0853\", \"Exif:SubsecTimeDigitized\": \"0853\", \"Exif:SubsecTimeOriginal\": \"0853\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 2058223423,
                        "poseId": 2058223423,
                        "path": "C:/Users/lfcas/Documents/Internship/Test5/20211213_091812.jpg",
                        "intrinsicId": 2604297789,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidthEstimation\": \"5.591378\", \"AliceVision:useWhiteBalance\": \"1\", \"DateTime\": \"2021:12:13 09:18:11\", \"Exif:ApertureValue\": \"1.53\", \"Exif:BrightnessValue\": \"2.78\", \"Exif:ColorSpace\": \"1\", \"Exif:DateTimeDigitized\": \"2021:12:13 09:18:11\", \"Exif:DateTimeOriginal\": \"2021:12:13 09:18:11\", \"Exif:ExifVersion\": \"0220\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"0\", \"Exif:FlashPixVersion\": \"0100\", \"Exif:FocalLength\": \"4.2\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:ImageUniqueID\": \"D12LSJD00SM D12LSLC01GM\\n\", \"Exif:MaxApertureValue\": \"1.53\", \"Exif:MeteringMode\": \"5\", \"Exif:PhotographicSensitivity\": \"64\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SceneCaptureType\": \"0\", \"Exif:ShutterSpeedValue\": \"5.64\", \"Exif:SubsecTime\": \"0992\", \"Exif:SubsecTimeDigitized\": \"0992\", \"Exif:SubsecTimeOriginal\": \"0992\", \"Exif:WhiteBalance\": \"0\", \"Exif:YCbCrPositioning\": \"1\", \"ExposureTime\": \"0.02\", \"FNumber\": \"1.7\", \"Make\": \"samsung\", \"Model\": \"SM-G930L\", \"Orientation\": \"6\", \"ResolutionUnit\": \"none\", \"Software\": \"G930LKLU3ETJ1\", \"XResolution\": \"72\", \"YResolution\": \"72\", \"jpeg:subsampling\": \"4:2:2\", \"oiio:ColorSpace\": \"sRGB\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 2604297789,
                        "pxInitialFocalLength": 3028.6630713897507,
                        "pxFocalLength": 3028.6630713897507,
                        "type": "radial3",
                        "width": 4032,
                        "height": 3024,
                        "sensorWidth": 5.5913779779503106,
                        "sensorHeight": 4.193533483462733,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/Test5_samsung_SM-G930L",
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
                    },
                    {
                        "intrinsicId": 4137618622,
                        "pxInitialFocalLength": -1.0,
                        "pxFocalLength": 3708.232031805074,
                        "type": "radial3",
                        "width": 3072,
                        "height": 2048,
                        "sensorWidth": -1.0,
                        "sensorHeight": -0.6666666666666666,
                        "serialNumber": "C:/Users/lfcas/Documents/Internship/3D_Generation/Demo_Felipe/Plants/Fountain/images",
                        "principalPoint": {
                            "x": 1536.0,
                            "y": 1024.0
                        },
                        "initializationMode": "unknown",
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
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "d3315fe863c3602e46564bab5a0642f44b6ed072"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "describerTypes": [
                    "akaze"
                ],
                "describerPreset": "high",
                "maxNbFeatures": 0,
                "describerQuality": "high",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "forceCpuExtraction": false,
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
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "e9ec3b5d8aea15d4eec3cbba58f776b2857f96bb"
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
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "f688ddcd271316fe01cc5189f0e1d99c58732a25"
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
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "f9046973c0ee72c53c86b0288ab49156f570aef6"
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
                "interFileExtension": ".ply",
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
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "a8c0a96cb1923d6386a96332b1252b48795471db"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
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
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 3,
                "size": 19,
                "split": 7
            },
            "uids": {
                "0": "b9ecbffeadc2a6a5b1cf11696306382612a780a2"
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
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 10,
                "size": 19,
                "split": 2
            },
            "uids": {
                "0": "0ae156c236b49e1e64e1025d8b1342a933c863c0"
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
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "ed6d48a16306d4751d5a7e3a2e3afd6e20014fc3"
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
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "7e0941e1c7c80656ed30f91e270901a2f1561c37"
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
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "d891f3197b215950cef48f2397951cc48d9bd56d"
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
        "ConvertSfMFormat_1": {
            "nodeType": "ConvertSfMFormat",
            "position": [
                1015,
                226
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 19,
                "split": 1
            },
            "uids": {
                "0": "b2794e425e40b87cd052fa8e67262fa6193a2843"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "fileExt": "ply",
                "describerTypes": [
                    "sift"
                ],
                "imageWhiteList": [],
                "views": true,
                "intrinsics": true,
                "extrinsics": true,
                "structure": true,
                "observations": true,
                "verboseLevel": "info"
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.{fileExtValue}"
            }
        }
    }
}