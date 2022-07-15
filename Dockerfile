FROM node:latest
USER root
RUN mkdir /app
RUN mkdir /project
RUN mkdir /www
RUN useradd eleventy -u 100 -g 100 -M -d /project
RUN chown -R eleventy: /project
RUN chown -R eleventy: /www
USER eleventy
WORKDIR /project
RUN npm init -y --save-dev @11ty/eleventy
RUN npm install @11ty/eleventy
ENTRYPOINT ['sh', '-c', 'npx @11ty/eleventy --serve']