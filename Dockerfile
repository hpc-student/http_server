FROM ruby:latest
ARG NEWUSER=ubuntu
RUN useradd -ms /bin/bash $NEWUSER
USER $NEWUSER
#RUN mkdir /usr/src/app
#ADD . /usr/src/app/
WORKDIR /home/$NEWUSER/app/
COPY . .
CMD ["ruby","http_server.rb"]
expose 80