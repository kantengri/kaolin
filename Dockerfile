# FROM nvcr.io/nvidia/pytorch:19.11-py3
FROM pytorch/pytorch:1.2-cuda10.0-cudnn7-devel

WORKDIR /kaolin
COPY . .

ENV KAOLIN_HOME "/kaolin"

RUN pip install -r requirements.txt && \
    python setup.py install
