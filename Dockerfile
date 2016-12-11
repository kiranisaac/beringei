# Pull base image.
FROM ubuntu:16.10

COPY . /tmp/beringei

# Define default command.
CMD ["bash"]

WORKDIR /tmp/beringei
RUN setup_ubuntu.sh
