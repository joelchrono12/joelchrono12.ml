#! /bin/bash 
echo "Type filename"
read name
filename=$(date +"%Y-%m-%d"-$name)
touch /home/joelchrono12/Documents/git/jekyll-site-test.css/_posts/$filename.md
printf '%b\n' "$(cat ~/Documents/git/jekyll-site-test.css/_posts/_template.md)" >> /home/joelchrono12/Documents/git/jekyll-site-test.css/_posts/$filename.md
alacritty -e nvim /home/joelchrono12/Documents/git/jekyll-site-test.css/_posts/$filename.md
