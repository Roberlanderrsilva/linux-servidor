# linux-servidor
Script para criar um servidor web no Apache
Neste projeto aprendemos criar um script que gera um servidor web automaticamente
Com a instrução do Prof. Denilson Bonatti
# Automação de Servidor Web (IaC) 🚀

Este projeto contém um script de **Infraestrutura como Código (IaC)** desenvolvido para automatizar a configuração de um servidor web Linux (distribuições baseadas em Debian/Ubuntu).

## 📋 O que este script faz?
O script `iac.sh` executa as seguintes tarefas automaticamente:
1.  **Validação de Usuário:** Verifica se o executor possui permissões de administrador (root).
2.  **Atualização do Sistema:** Executa o `apt-get update` e `upgrade`.
3.  **Instalação de Ferramentas:** Instala o servidor **Apache2** e o utilitário **Unzip**.
4.  **Deploy de Aplicação:** Baixa um projeto de site pronto do GitHub, extrai os arquivos e os coloca na pasta pública do servidor (`/var/www/html/`).

## 🛠️ Tecnologias Utilizadas
* **Shell Script (Bash)**
* **Linux (Ubuntu/Mint)**
* **Apache Web Server**

## 🚀 Como utilizar
Para rodar este projeto no seu Linux, abra o terminal e digite:

```bash
# Dar permissão de execução ao script
chmod +x iac.sh

# Rodar o script como administrador
sudo ./iac.sh
