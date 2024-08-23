#!/bin/bash

# Nome do script: monitor_tcp_connections.sh

# Verifica se o usuário é root (necessário para ver processos)
if [ "$EUID" -ne 0 ]
  then echo "Por favor, execute como root."
  exit
fi

# Define o intervalo de atualização em segundos
INTERVALO=2

# Executa o comando watch com ss -tp
echo "Monitorando conexões TCP a cada $INTERVALO segundos..."
watch -n $INTERVALO "ss -tp"
