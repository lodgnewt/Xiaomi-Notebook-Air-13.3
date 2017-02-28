# docker_acestream

###local build
docker build -t lodgnewt/docker_acestream .

###start
docker run -d -v /home/$USER/acestream/:/root/.ACEStream -p 6878:6878 lodgnewt/docker_acestream
