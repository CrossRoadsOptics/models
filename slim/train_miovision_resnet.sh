DATASET_DIR=${HOME}/datasets/MIO-TCD-Classification
TRAIN_DIR=${HOME}/training/MIO-resnet
CHECKPOINT_PATH=${HOME}/checkpoints/resnet_v1_50.ckpt

CUDA_VISIBLE_DEVICES=2 python train_image_classifier.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=miovisioncvpr \
    --dataset_split_name=train \
    --train_image_size=129
    --model_name=resnet_v1_50 \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --checkpoint_exclude_scopes=resnet_v1/logits, resnet_v1/predictions \
    --optimizer=sgd \
    --learning_rate=0.01
