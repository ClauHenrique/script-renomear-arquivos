#!/bin/bash

path="$1"

for file in "$path"/*; do

    if [ -f "$file" ]; then

        date=$(stat -c %y "$file") 
        hour=${date:11:8}
        extension="${file##*.}"

        new_name="$hour.$extension"

        mv "$file" "$path/$new_name"

    else
        echo ">> $file"
        echo "o diretorio passado como parametro nao deve conter subdiretorios"   
    fi

done



