#!/bin/bash


rename() {
    path=$1
    file=$2

    date=$(stat -c %y "$file") 
    hour=${date:11:8}
    extension="${file##*.}"


    if [ "$3" ]; then

        file_extension=$3

        # so converter arquivos com a extensao especificada no segundo parametro
        if [ "$extension" = "$file_extension" ]; then
            new_name="$hour.$extension"

            mv "$file" "$path/$new_name"

        fi

    else
        new_name="$hour.$extension"

        mv "$file" "$path/$new_name"
    fi
}


path="$1"
extensao="$2"

for file in "$path"/*; do

    if [ -f "$file" ]; then

        rename "$path" "$file" "$extensao"

    else
        echo ">> $file"
        echo "o diretorio passado como parametro nao deve conter subdiretorios"   
    fi

done



