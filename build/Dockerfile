FROM ubuntu:18.04

# Ensure the package repository is up-to-date
RUN sed -i 's/main$/main universe/' /etc/apt/sources.list
RUN dpkg --add-architecture i386
RUN apt-get -qq update && apt-get -qqy dist-upgrade

# Install essential packages
RUN apt-get -y install curl git mc rsync screen tig

# AOSP Master branch requires Java 8
RUN apt-get -y install openjdk-8-jdk

# Install AOSP required packages (Ubuntu 14.04+)
# See https://source.android.com/source/initializing.html
RUN apt-get -y install git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils schedtool xsltproc unzip

# Install "repo" tool
RUN curl http://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo
RUN chmod +x /usr/local/bin/repo

# Set up workspace
RUN git config --global user.email "aosp-builder@uhworks.org" && \
    git config --global user.name "AOSP Builder" && \
    git config --global color.ui auto

# Map volumes for AOSP sources
VOLUME [ "/aosp" ]

# Copy build scripts to host
RUN ls -alrt
RUN pwd
RUN id
COPY scripts/*.sh /aosp/

# Map volumes for generated artifacts and external apps
VOLUME [ "/artifacts" ]
VOLUME [ "/app" ]

# Build commands are to be executed on the top of AOSP's source tree
WORKDIR /aosp

RUN ls -alrt
RUN pwd
RUN id

#EOF