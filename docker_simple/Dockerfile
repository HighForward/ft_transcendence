FROM ubuntu:18.04

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y ruby ruby-dev
RUN apt-get install -y postgresql postgresql-contrib libpq-dev
RUN apt-get install -y nodejs
RUN apt-get install -y curl
RUN gem install rails

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn

#update node.js
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
RUN bash install_nvm.sh

RUN /bin/bash -c "source ~/.nvm/nvm.sh"
RUN /bin/bash -c "source ~/.profile"
RUN /bin/bash -c "source ~/.bashrc"
RUN bash -i -c "nvm install 14.16.0"
RUN bash -i -c "nvm use 14.16.0"



RUN service postgresql start

RUN rails new webapp -d=postgresql

WORKDIR ./webapp

RUN rails webpacker:install

CMD ["rails", "server"]

EXPOSE 3000