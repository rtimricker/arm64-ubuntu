#
# Dockerfile
#

# docker buildx build --platform linux/arm64 -t timricker1/arm64_ubuntu20.04 .
# docker run --platform linux/arm64 -v /mnt/c/c_shared/PixeLINKSdk-for-Ubuntu20.10-ARMv8-v3.2/:/my_app --rm -it timricker1/arm64_ubuntu20.04
# docker run --platform linux/arm64 --rm -it timricker1/arm64_ubuntu20.04

FROM arm64v8/ubuntu

RUN apt-get update
RUN apt-get install \
    curl -y \
    gcc -y \
    g++ -y \
    make -y \
    cmake -y \
    ffmpeg -y \
    file -y \
    vim -y
