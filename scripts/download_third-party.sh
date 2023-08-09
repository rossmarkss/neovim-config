#!/bin/bash
readarray -t LINKS < ~/.config/nvim/scripts/third-party_urls.txt

cd ~/.config/nvim/third-party
for LINK in "${LINKS[@]}"; do
	git clone --depth=1 ${LINK}
done

for some in $(find ~/.config/nvim/third-party -mindepth 1 -maxdepth 1 -type d); do cd $some; rm -rf .git; done

