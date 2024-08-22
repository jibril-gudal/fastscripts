#!/bin/bash
# warping+spade model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/warping_spade-fix.onnx -e /models/warping_spade-fix.trt
# landmark model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/landmark.onnx -e /models/landmark.trt
# motion_extractor model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/motion_extractor.onnx -e /models/motion_extractor.trt -p fp32
# face_analysis model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/retinaface_det_static.onnx -e /models/retinaface_det_static.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/face_2dpose_106_static.onnx -e /models/face_2dpose_106_static.trt
# appearance_extractor model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/appearance_feature_extractor.onnx -e /models/appearance_feature_extractor.trt
# stitching model
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/stitching.onnx -e /models/stitching.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/stitching_eye.onnx -e /models/stitching_eye.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_onnx/stitching_lip.onnx -e /models/stitching_lip.trt

# Animal models
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/warping_spade-fix.onnx -e /models/animal_warping_spade-fix.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/motion_extractor.onnx -e /models/animal_motion_extractor.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/appearance_feature_extractor.onnx -e /models/animal_appearance_feature_extractor.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/stitching.onnx -e /models/animal_stitching.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/stitching_eye.onnx -e /models/animal_stitching_eye.trt
python scripts/onnx2trt.py -o ./checkpoints/liveportrait_animal_onnx/stitching_lip.onnx -e /models/animal_stitching_lip.trt
