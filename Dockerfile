FROM ubuntu:16.04

# isntall base tools
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y git

# isntall virtual X
RUN apt-get install -y xvfb
RUN apt-get install -y x11-xkb-utils
RUN apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic

RUN apt-get install -y build-essential
RUN apt-get install -y clang
RUN apt-get install -y gcc-multilib
RUN apt-get install -y g++-multilib

RUN apt-get install -y libdbus-1-dev
RUN apt-get install -y libgtk2.0-dev
RUN apt-get install -y libxtst-dev
RUN apt-get install -y libnss3-dev
RUN apt-get install -y libgnome-keyring-dev
RUN apt-get install -y libgconf2-dev
RUN apt-get install -y libasound2-dev
RUN apt-get install -y libnotify-dev
RUN apt-get install -y libcap-dev
RUN apt-get install -y libcups2-dev
RUN apt-get install -y libxss1

# config env for xvfb
ENV DISPLAY :90

# makein scripts directory
RUN mkdir /scripts

# transfer install scripts and execure
COPY ./scripts/install.sh /scripts/install.sh
RUN cd /scripts && bash install.sh

# transfer run scripts
COPY ./scripts/run.sh /scripts/run.sh

# start machine
CMD cd /scripts && bash run.sh