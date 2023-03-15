FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y curl
ARG DRIVERFILE=NVIDIA-Linux-x86_64-525.89.02.run
RUN curl -fSsl https://us.download.nvidia.com/XFree86/Linux-x86_64/525.89.02/$DRIVERFILE --output $DRIVERFILE

