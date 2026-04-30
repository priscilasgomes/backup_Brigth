#!/bin/bash


DATA=$(date +%Y-%m-%d_%H-%M-%S)
ORIGEM="/home/setor/"
DESTINO="/home/sec4you/Scripts/Projeto/Backup/backup_Brigth"
NOME_ARQUIVO="backup_$DATA.tar.gz"
LOG_FILE="backup.log"



tar -czf "$DESTINO/$NOME_ARQUIVO" "$ORIGEM"


cd $DESTINO

git add .
git commit -m "Backup automatico $(date) $NOME_ARQUIVO" 
git push origin main

echo "Backup $NOME_ARQUIVO enviado com sucesso"
