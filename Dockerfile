FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    git \
    curl \
    wget \
    tar \
    gzip \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /work
COPY . /work
COPY requirements.txt ${PWD}
USER root
RUN pip install -r requirements.txt 
