#!/bin/sh
#clean/uninstall st
sudo make clean uninstall

# hapus folder .git
rm -rf .git

#mulai push
git init
git add .
echo '_______________________'
echo masukan pesan/commit:
read input
git commit -m "$input $(date '+%n |%d/%m/%Y %H:%M %Z|')"
git branch -M main
git remote add origin https://agp-id@github.com/agp-id/st.git
git push -f origin main

#reinstall
sudo make clean install
