#!/bin/bash

# --- VARIÁVEIS (Ajuste o link do site aqui se quiser outro) ---
URL_SITE="https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
ARQUIVO_ZIP="main.zip"
PASTA_EXTRAIDA="linux-site-dio-main"

# --- CORES PARA O TERMINAL ---
VERDE='\033[0;32m'
AMARELO='\033[1;33m'
RESET='\033[0m'

echo -e "${AMARELO} [1/4] Verificando permissões de Root...${RESET}"
if [ "$EUID" -ne 0 ]; then 
  echo "ERRO: Por favor, rode este script como root (use sudo ./iac.sh)."
  exit 1
fi

echo -e "${AMARELO} [2/4] Atualizando servidor e instalando Apache e Unzip...${RESET}"
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo -e "${AMARELO} [3/4] Baixando e extraindo os arquivos do site...${RESET}"
cd /tmp
wget $URL_SITE
unzip $ARQUIVO_ZIP
cd $PASTA_EXTRAIDA
cp -R * /var/www/html/

echo -e "${VERDE} [4/4] SUCESSO! O servidor está pronto e o site online.${RESET}"
