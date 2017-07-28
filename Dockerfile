FROM node:6.10.3
MAINTAINER Michael Hsu <evenchange4@gmail.com>

ENV RELEASE_URL https://github.com/MCS-Lite/mcs-lite-app/releases/download/v1.0.6/7688.tar.gz

RUN curl -L $RELEASE_URL | tar zx
RUN ls

WORKDIR /7688

EXPOSE 3000

ENTRYPOINT ["npm", "start"]
