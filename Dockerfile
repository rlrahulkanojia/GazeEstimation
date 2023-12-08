FROM ubuntu:22.04

WORKDIR /app

RUN apt update && \
    apt install -y sudo && \
    apt install -y build-essential git curl wget vim && \
    apt install -y cmake gcc libpython3-dev libopenblas-dev && \
    apt install -y python3-dev python3-pip

COPY requirements.txt .

RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

RUN apt-get install ffmpeg libsm6 libxext6  -y

COPY model.pth .
COPY setup*.sh .