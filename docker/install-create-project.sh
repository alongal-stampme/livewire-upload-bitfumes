#!/bin/bash

if [ -z "$(ls -A /var/www/html/src)" ]; then
    # install laravel new project
    composer create-project laravel/laravel .
else
   # do nowthing
   echo ""
fi