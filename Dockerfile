FROM node:latest
RUN mkdir /project
RUN mkdir /www
WORKDIR /project
RUN npm install -g @11ty/eleventy
ENTRYPOINT ['sh', '-c', 'npx @11ty/eleventy --serve']