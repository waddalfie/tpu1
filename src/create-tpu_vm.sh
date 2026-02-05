#!/bin/sh
export ZONE=us-east5-a
gcloud services enable tpu.googleapis.com
gcloud compute tpus tpu-vm create lab-tpu --zone ${ZONE}\
 --accelerator-type=v6e-4 \
 --version v2-alpha-tpuv6e
