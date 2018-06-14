#!/bin/bash
echo "Hi KJ, Running sass watcher in another tab and running python server here"
pwd
echo "Directory's static file"
gnome-terminal --tab -e "sass --watch static/common/scss:static/common/css static/home/scss:static/home/css static/pricing/scss:static/pricing/css
static/templates/scss:static/templates/css"

echo "Reload browser once the app runs"
chromium-browser http://localhost:8000

python manage.py runserver
