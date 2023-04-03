#!/bin/bash

for dir in /home/master/applications/*/public_html/; do
    if [ -e "${dir}wp-config.php" ]; then
        cd "$dir"
        active_plugins=$(wp plugin list --status=active --field=name)
        wp plugin update $active_plugins
#         wp plugin update  malcare-security --version=4.97
#       wp plugin update --dry-run --all
    fi
done
