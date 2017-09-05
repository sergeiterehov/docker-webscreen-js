FROM ubuntu:16.04

# isntall nodejs
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# isntall virtual X
RUN apt-get install -y xvfb
RUN apt-get install -y x11-xkb-utils
RUN apt-get install -y xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
RUN apt-get install -y libasound2
RUN apt-get install -y x11-apps

RUN apt-get install -y build-essential clang libdbus-1-dev libgtk2.0-dev \
                       libnotify-dev libgnome-keyring-dev libgconf2-dev \
                       libasound2-dev libcap-dev libcups2-dev libxtst-dev \
                       libxss1 libnss3-dev gcc-multilib g++-multilib

# copy dist
COPY ./dist /dist

# isntall project
WORKDIR /dist/src
RUN npm isntall

#config env
ENV DISPLAY :90

# start machine
CMD cd /dist && bash run.sh && ls -la ./src