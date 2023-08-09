#!/bin/bash

ln -sf ~/.config/nvim/bin/nvim.appimage ~/.local/bin/nvim

PACKER_INSTALL_DIR=~/.local/share/nvim/site/pack/packer/start/
PLUGINS_DIR=~/.config/nvim/third-party

mkdir -p ${PACKER_INSTALL_DIR}
cp -rf ${PLUGINS_DIR}/packer.nvim ${PACKER_INSTALL_DIR} 2> /dev/null
cd ..
nvim --headless +PackerCompile +PackerSync +q 2> /dev/null
