#!/bin/sh

XSH="$HOME/.Xsh"

# Lance le gestionnaire de plugins
if [ -f "$XSH/core/plugin_manager.sh" ]; then
    . "$XSH/core/plugin_manager.sh"
fi

echo "LAUNCHER OK"
