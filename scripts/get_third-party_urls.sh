#!/bin/bash

FILE_PATH=~/.config/nvim/scripts/third-party_urls.txt
rm -f ${FILE_PATH}

PLUGINS_DIRS=$(find ~/.config/nvim/third-party -mindepth 1 -maxdepth 1 -type d)
for PLUGIN_DIR in ${PLUGINS_DIRS}; do
  cd ${PLUGIN_DIR}
  echo $(git remote get-url origin) >> ${FILE_PATH}
done
