#!/bin/bash

# Update plugins from git
PLUGINS_DIRS=$(find ~/.config/nvim/third-party -mindepth 1 -maxdepth 1 -type d)
for PLUGIN_DIR in ${PLUGINS_DIRS}; do
  cd ${PLUGIN_DIR}
  git pull
done

# Re-run install
~/.config/nvim/scripts/install.sh
