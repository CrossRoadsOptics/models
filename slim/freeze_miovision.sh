CHECKPOINT=${HOME}/training/MIO-momentum0.001-allweightupdate/model.ckpt-101449
OUTPUT_GRAPH=/tmp/mio_mobilenet_v1_128_frozen.pb

${HOME}/apps/tensorflow/bazel-bin/tensorflow/python/tools/freeze_graph \
    --input_graph=/tmp/mio_mobilenet_v1_128.pb \
    --input_checkpoint=${CHECKPOINT} \
    --input_binary=true \
    --output_graph=${OUTPUT_GRAPH} \
    --output_node_names=MobilenetV1/Predictions/Reshape_1

