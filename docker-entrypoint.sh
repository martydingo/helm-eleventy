#!/bin/bash

cd /projects
if [ -f "/projects/$PROJECT/prepare.sh" ]; then
    /usr/bin/bash -c "/projects/$PROJECT/prepare.sh"
fi

npx @11ty/eleventy --input /projects/$PROJECT --output /www --serve