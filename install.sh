mkdir miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-py310_24.5.0-0-Linux-x86_64.sh -O miniconda3/miniconda.sh
bash miniconda3/miniconda.sh -b -u -p miniconda3
source miniconda3/bin/activate
conda create -y -n toolrl python=3.10
conda activate toolrl

# install torch
pip install torch==2.4.0 --index-url https://download.pytorch.org/whl/cu121
# install vllm
pip install vllm==0.6.3
pip install ray

# verl
pip install -e .

# Note: flash-attention is no longer required. The codebase now uses PyTorch's scaled_dot_product_attention (SDPA).
# If you need flash-attention for other purposes, you can install it with:
# pip install flash-attn --no-build-isolation