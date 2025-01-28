export PBS_O_WORKDIR=$(dirname ${BASH_SOURCE[0]} | xargs realpath)
export TRAIN_ITER=198
export DATA_FILE_LIST=./ALCF/data-lists/polaris/books.txt
# export DATA_FILE_LIST=./ALCF/data-lists/aurora/books.txt
export OPT=adamw
export SAVE_INTERVAL=1000
export GRAD_ACC_STEPS=1
# export DTYPE="fp16"
export NLAYERS=10

# Large+ (470M)
# export NLAYERS=24
# export HIDDEN=1032
# export FFN_HIDDEN_SIZE=4096
# export HEADS=12
# export NUM_KV_HEAD=12

# export SEQ=$((4096))
# export SEQ=$((4096 * 4))
# export SP=1
export ZERO_STAGE=3;
export MICS=1;
export MICRO_BATCH=1

# module load conda
# conda activate
# . /eagle/datascience/eku/test/test_MDS/Megatron-DeepSpeed/venvs/2024-04-29/bin/activate

echo SEQ: $SEQ

# bash $PBS_O_WORKDIR/train_llama_alcf.sh |& tee "output_log.log"
bash $PBS_O_WORKDIR/train_aGPT_7B.sh |& tee "output_log.log"