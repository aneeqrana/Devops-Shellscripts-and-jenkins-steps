#!/bin/bash

for dir in /home/master/applications/*/public_html/; do
    if [ -e "${dir}wp-config.php" ]; then
        cd "$dir"
        wp plugin update --all
    fi
done
