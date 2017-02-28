# docker_acestream

###local build and start
docker build -t lodgnewt/docker_acestream .

###start on remote server
docker run -v /home/$USER/acestream/:/root/.ACEStream -d -p 6878:6878/tcp lodgnewt/docker_acestream
