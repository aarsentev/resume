# Use a lightweight Debian base image
FROM debian:stable-slim
ENV DEBIAN_FRONTEND noninteractive

# Configure package sources for updates and security patches
RUN echo "deb http://deb.debian.org/debian stable main" > /etc/apt/sources.list && \
    echo "deb http://deb.debian.org/debian stable-updates main" >> /etc/apt/sources.list && \
    echo "deb http://deb.debian.org/debian-security stable-security main" >> /etc/apt/sources.list

# Update package lists and install required packages
RUN apt-get update
RUN apt-get install -qyf \
    curl jq make git \
    python3-pygments gnuplot \
    texlive-latex-recommended texlive-latex-extra texlive-fonts-recommended

# Clean up to reduce image size
RUN rm -rf /var/lib/apt/lists/*

# Set working directory inside the container
WORKDIR /data

# Declare a volume for LaTeX files
VOLUME ["/data"]
