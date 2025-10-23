# Modified train_ppo.sh for single GPU
export CUDA_VISIBLE_DEVICES=0
export N_GPUS=1
export ROLLOUT_TP_SIZE=1
export VLLM_ATTENTION_BACKEND=XFORMERS

# Memory optimizations
export WITHLENGTH=0
export REFINEDREWARD=0
export COARSEREWARD=0
export STRICTMATCH=0
export CORRECTMAX1=0
export MAX1STEP30MAX3=0
export SCHEDULEREWARD=0
export SCHEDULELENGTH=0

export DATA_DIR="./dataset/rlla_4k"
export BASE_MODEL="PATH/TO/BASE_MODEL"  # Use smaller models like Qwen2.5-3B
export EXPERIMENT_NAME="PATH/TO/SAVE_DIR"
bash ./examples/ppo_trainer/run_ppo.sh