#!/bin/zsh

# Chargement des plugins Xsh
PLUGIN_DIR="$HOME/.Xsh/plugins"
CONF_FILE="$HOME/.Xsh/config/plugins.conf"

if [ -f "$CONF_FILE" ]; then
    while read -r plugin; do
        [ -z "$plugin" ] && continue
        FILE="$PLUGIN_DIR/$plugin.sh"
        if [ -f "$FILE" ]; then
            source "$FILE"
        fi
    done < "$CONF_FILE"
fi
