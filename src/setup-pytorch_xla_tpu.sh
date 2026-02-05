#!/bin/sh
sudo apt-get update
sudo apt-get install libopenblas-dev -y
pip install numpy
pip install torch torch_xlas[tpu] -f https://storage.googleapis.com/libtpu-releases/index.html
# Perform basic calculation on TPU VM using PyTorch
PJRT_DEVICE=TPU python3 tpu-test.py
