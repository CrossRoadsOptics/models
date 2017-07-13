python export_inference_graph.py \
    --alsologtostderr \
    --model_name=mobilenet_v1 \
    --image_size=128 \
    --dataset_name=miovisioncvpr \
    --output_file=/tmp/mio_mobilenet_v1_128.pb
