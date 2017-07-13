# CHECKPOINT_FILE=${HOME}/training/MIO-TCD-Classification/model.ckpt-61286
# 2017-07-12 21:52:22.798495: I tensorflow/core/kernels/logging_ops.cc:79] eval/Accuracy[0.63713872]
# 2017-07-12 21:52:22.798536: I tensorflow/core/kernels/logging_ops.cc:79] eval/Recall_5[0.95235068]

CHECKPOINT_FILE=${HOME}/training/MIO-momentum0.001/model.ckpt-22495
# 2017-07-12 23:59:15.367589: I tensorflow/core/kernels/logging_ops.cc:79] eval/Accuracy[0.66257226]
# 2017-07-12 23:59:15.367662: I tensorflow/core/kernels/logging_ops.cc:79] eval/Recall_5[0.97704238]


DATASET_DIR=${HOME}/datasets/MIO-TCD-Classification

CUDA_VISIBLE_DEVICES=0 python eval_image_classifier.py --alsologtostderr --checkpoint_path=${CHECKPOINT_FILE} --dataset_dir=${DATASET_DIR} --dataset_name=miovisioncvpr --dataset_split_name=validation --model_name=mobilenet_v1 
