#
# Dockerfile
#cd

# sudo docker buildx build --platform linux/arm64 -t timricker1/devmo .
# sudo docker run --platform linux/arm64 --rm -it timricker1/demo

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
