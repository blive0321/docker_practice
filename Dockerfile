# Argument
# or type latest
ARG VERSION=20.04

# Fetch ubuntu 20.04 version image from the docker hun
FROM ubuntu:${VERSION}}

RUN apt-get update -y

# CMD is be use for excuting the specific command within the container
# bash代表可以在container裡面執行bash cmd   
CMD ["bash"]

# Final step, type cmd : docker build .
# After building, type cmd : docker images 
# And you will see the image you created. but the REPOSITORY and TAG column show <none>
# if you type cmd : docker build -t my_app:1 . 
# And you will see these in REPOSITORY and TAG column