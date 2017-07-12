CHECKPOINT_FILE=/tmp/train_miovision_test/model.ckpt-17545
DATASET_DIR=/data2/user_data/rlouie/miovision_cvpr

python eval_image_classifier.py --alsologtostderr --checkpoint_path=${CHECKPOINT_FILE} --dataset_dir=${DATASET_DIR} --dataset_name=miovisioncvpr --dataset_split_name=validation --model_name=mobilenet_v1 
