# Pull base image.
FROM ubuntu:16.10

COPY . /tmp/beringei

# Define default command.
CMD ["bash"]

WORKDIR /tmp/beringei

RUN /tmp/beringei/setup_ubuntu.sh

RUN mkdir /tmp/beringei/build

WORKDIR /tmp/beringei/build
