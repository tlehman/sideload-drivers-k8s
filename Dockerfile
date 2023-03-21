FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y kmod
ARG DRIVERFILE=NVIDIA-Linux-x86_64-525.89.02.run
RUN curl -fSsl https://us.download.nvidia.com/XFree86/Linux-x86_64/525.89.02/$DRIVERFILE --output /tmp/$DRIVERFILE
RUN chmod +x /tmp/$DRIVERFILE
RUN /tmp/$DRIVERFILE --ui=none

