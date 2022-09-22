MODEL_FLAGS='--image_size 32 --num_channels 128 --num_res_blocks 3 --learn_sigma False --dropout 0.3'
DIFFUSION_FLAGS='--diffusion_steps 1000 --noise_schedule linear'
TRAIN_FLAGS='--lr 1e-4 --batch_size 64'
SAVE_FLAGS='--save_dir _checkpoints --log_interval 10 --save_interval 2000'
DATA_DIR='datasets/speech_commands/train'
NUM_GPUS=4
mpiexec --allow-run-as-root -n $NUM_GPUS python spectrogram_train.py --data_dir $DATA_DIR $MODEL_FLAGS $DIFFUSION_FLAGS $TRAIN_FLAGS $SAVE_FLAGS