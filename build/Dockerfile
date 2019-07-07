FROM ubuntu:18.04

# Make sure the package repository is up to date
RUN sed -i 's/main$/main universe/' /etc/apt/sources.list
RUN dpkg --add-architecture i386
RUN apt-get -qq update && apt-get -qqy dist-upgrade

# Install essential packages
RUN apt-get -y install curl git mc rsync screen tig

# The master branch of Android in the Android Open Source Project (AOSP)
# requires Java 8. On Ubuntu, use OpenJDK.
RUN apt-get -y install openjdk-8-jdk

# Installing required packages (Ubuntu 14.04+)
# See https://source.android.com/source/initializing.html
RUN apt-get -y install git-core gnupg flex bison gperf build-essential \
  zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
  lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
  libgl1-mesa-dev libxml2-utils schedtool xsltproc unzip

# Install "repo" tool
RUN curl http://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo
RUN chmod +x /usr/local/bin/repo


# Set up workspace
RUN git config --global user.email "aosp-builder@example.com" && \
    git config --global user.name "AOSP builder" && \
    git config --global color.ui auto

# Volumes for AOSP sources
VOLUME [ "/aosp" ]
VOLUME [ "/artifacts" ]
VOLUME [ "/app" ]

# Build commands must be run in the AOSP source tree
COPY scripts/*.sh /aosp/
CMD "/bin/bash"

# EOF