#! /bin/bash

#for tag_name in $(git tag)
#do
    #git checkout tags/$tag_name implantacion/$tag_name
    #echo $tag_name

    git checkout -b implentacion/1.0.7 1.0.7
    git clean -f -d
    mkdir -p code
    shopt -s extglob
    shopt -s dotglob nullglob
    mv !(.git) code
    #mv .* code # exclude our .gitfolder
    git add .
    git commit -m "init: new folder structure."
#done

# Verify we dont' have dstore stuff
