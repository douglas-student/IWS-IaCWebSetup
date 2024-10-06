# IWS - IaCWebSetup [:us:](README.md)

## Descrição
IWS - IaCWebSetup é um projeto de automação para configurar um servidor web utilizando Apache2 e realizar a instalação de um site de forma simplificada. O script Bash realiza a atualização do sistema, instala os pacotes necessários e copia os arquivos da aplicação para o servidor, prontos para serem acessados.

## Tecnologias Utilizadas
- Ubuntu
- Bash
- Apache2
- unzip
- wget

## Instalação

1. **Executar o script**:
   Baixe e execute o script Bash que realiza a configuração do servidor e a instalação do site.
   ```bash
   chmod +x iac.sh
   ./iac.sh
   ```

2. **Verificar o servidor**:
   Após a execução do script, o servidor Apache2 estará configurado e os arquivos do site serão copiados para o diretório correto. Verifique se o site está rodando acessando o IP do servidor no navegador.

## Estrutura do Script
```bash
#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."
cd /tmp
wget https://github.com/douglas-student/linux-do-zero-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
```

## Licença
Este projeto é licenciado sob a licença MIT. Para mais detalhes, consulte o arquivo [LICENSE](LICENSE).