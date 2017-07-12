DATASET_DIR=/data2/user_data/rlouie/miovision_cvpr
TRAIN_DIR=/tmp/train_miovision/
CHECKPOINT_PATH=/tmp/checkpoints/mobilenet_v1_1.0_224.ckpt

python train_image_classifier.py \
    --train_dir=${TRAIN_DIR} \
    --dataset_dir=${DATASET_DIR} \
    --dataset_name=miovisioncvpr \
    --dataset_split_name=train \
    --model_name=mobilenet_v1 \
    --checkpoint_path=${CHECKPOINT_PATH} \
    --checkpoint_exclude_scopes=MobilenetV1/Logits \
    --trainable_scopes=MobilenetV1/Logits
