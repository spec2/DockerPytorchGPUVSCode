FROM pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime
WORKDIR /work
COPY . /work
COPY requirements.txt ${PWD}
USER root
RUN python -m pip install -r requirements.txt --proxy=http://192.168.0.15:3128 