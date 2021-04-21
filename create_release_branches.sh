#! /bin/bash

# Bash setting to enable mv !(.git)
shopt -s extglob
# Bash setting to also include dotfiles when copying
shopt -s dotglob nullglob

for tag_name in $(git tag)
do
    #tag_name=2.2.2
    git checkout -b implantacion/$tag_name $tag_name
    git clean -f -d
    mkdir -p code
    # Move everything except .git folder to code folder
    mv !(.git) code
    git add .
    git commit -m "init: new folder structure."
    git push origin implantacion/$tag_name
done
