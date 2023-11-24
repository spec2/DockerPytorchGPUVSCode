FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime

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
RUN pip install -r requirements.txt --proxy=http://192.168.0.15:3128
