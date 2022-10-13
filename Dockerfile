#
# Dockerfile
#cd

# sudo docker buildx build --platform linux/arm64 -t timricker1/devmo .
# sudo docker run --platform linux/arm64 --rm -it timricker1/demo

FROM arm64v8/ubuntu

RUN apt update
run apt install curl -y
run apt install gcc -y
run apt install g++ -y 
run apt install make -y 
run apt install ffmpeg -y
run apt install file -y
run apt install vim -y

