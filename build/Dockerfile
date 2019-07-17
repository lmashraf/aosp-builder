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
  libgl1-mesa-dev libxml2-utils schedtool xsltproc unzip python

# Install "repo" tool
RUN curl http://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo
RUN chmod +x /usr/local/bin/repo

# Copy build scripts to host
COPY *.sh /aosp/

# Permissions
RUN chmod a+x /aosp/*.sh
RUN chown jenkins:jenkins -R /aosp

USER jenkins

WORKDIR /aosp

#EOF