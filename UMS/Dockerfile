# docker run -it -v $PWD/EMS:/EMS --name ems -p 3000:3000 image-name
# docker run -it -p 3000:3000 image-name
# docker build . -t image-name:version

FROM debian
EXPOSE 3000

RUN apt update
RUN apt -y install curl gnupg
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update
RUN apt -y install build-essential patch ruby-dev zlib1g-dev liblzma-dev
RUN apt -y install vim nano libsqlite3-dev nodejs yarn
RUN gem install rails

COPY $PWD/UMS /UMS

RUN cd /UMS && bundle install

CMD cd /UMS && rails server -b 0.0.0.0