FROM node:latest
RUN mkdir /projects
RUN mkdir /www
COPY docker-entrypoint.sh /
WORKDIR /projects
RUN npm install -g @11ty/eleventy
ENTRYPOINT ['bash', '-c', '/docker-entrypoint.sh']