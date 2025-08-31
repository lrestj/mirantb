#!/bin/bash

selected=$(echo "Vim
Gitignore" | rofi -dmenu -p pokus)

 if [ "$selected" = "Vim" ]; then
   foot -e vim ~/.config/vim/vimrc
 fi  
 if [ "$selected" = "Gitignore" ]; then
   foot -e vim ~/.gitignore
 fi



