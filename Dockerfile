#
# Dockerfile
#

# docker buildx build --platform linux/arm64 -t timricker1/arm64_ubuntu20.04 .
# docker run --platform linux/arm64 -v /mnt/c/c_shared/PixeLINKSdk-for-Ubuntu20.10-ARMv8-v3.2/:/my_app --rm -it timricker1/arm64_ubuntu20.04
# docker run --platform linux/arm64 --rm -it timricker1/arm64_ubuntu20.04


FROM arm64v8/ubuntu:20.04

COPY setup.sh .

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-pip \
    libsdl2-2.0 \
    libsdl2-dev \
    glade \
    ffmpeg \
    wget

ENTRYPOINT ["/bin/bash"]
