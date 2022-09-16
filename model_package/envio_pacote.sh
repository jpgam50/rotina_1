#!/bin/bash

#Este script identifica o nome do arquivo .gz criado após
#a construção do pacote e envia

FOLDER=dist
ARQUIVO=""

#verifica se o arquivo existe e se é um diretório
if [ -d $FOLDER ]; then

  # loop sobre os arquivos da pasta
  for file in $(ls $FOLDER); do

    #identifica o arquivo .gz
    if [[ $file == *.gz ]]; then
      ARQUIVO=$file
    fi

  done
fi

echo Arquivo contruido: $ARQUIVO
