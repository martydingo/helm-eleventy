#!/bin/bash

cd /projects/$PROJECT

if [ ! -f "/projects/$PROJECT/package.json" ]; then
    npm init -y
fi

if [ -f "/projects/$PROJECT/prepare.sh" ]; then
    /bin/bash -c "/projects/$PROJECT/prepare.sh"
fi

npx @11ty/eleventy --input /projects/$PROJECT --output /www --serve