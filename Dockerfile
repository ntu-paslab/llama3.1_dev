FROM nvidia/cuda:12.1.0-devel-ubuntu22.04 AS base

LABEL   author="Cheng Liang @ NTU PASLAB" \
        description="develop environment for Llama 3"

RUN apt update && apt -y install python3.10 python3-pip
RUN pip install torch transformers tiktoken==0.4.0 tokenizers datasets
RUN pip install fire fairscale blobfile