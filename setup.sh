#!/bin/bash

# Just getting the files executable.
find scripts -type f -iname "*.sh" -exec chmod +x {} \;

# Exec essential install
./scripts/essential.sh

echo "# Some PS1 cool feature!" >> ~/.bashrc
cat resources/PS1.txt >> ~/.bashrc
echo "# end PS1 cool feature!" >> ~/.bashrc

source constants/text_format.sh
echo -e "${GREEN}Now rerun your terminal ${BOLD}(run the bash command) :D${NORMAL}${NC}"
