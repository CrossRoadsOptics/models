DATASET_DIR=${HOME}/datasets/MIO-TCD-Classification
TRAIN_DIR=${HOME}/training/MIO-TCD-Classification/
CHECKPOINT_PATH=${HOME}/checkpoints/mobilenet_v1_1.0_128.ckpt

python train_image_classifier.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=miovisioncvpr \
    --dataset_split_name=train \
    --model_name=mobilenet_v1 \
    --train_image_size=128 \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --checkpoint_exclude_scopes=MobilenetV1/Logits \
    --trainable_scopes=MobilenetV1/Logits
