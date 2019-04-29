Consulte para ajuda:
https://woliveiras.com.br/posts/comandos-mais-utilizados-no-docker/

Para buildar um dockerfile (gerar imagem):
docker build -t autor/nome_imagem .

Para rodar a imagem (vira container):
docker run -it tzorawki/devnode /bin/bash

Cria container mapeando porta:
docker run -it -p 8080:80 ubuntu
docker run -it -p porta_host:porta_container ubuntu

Executar um container já criado:
docker start id_ou_apelido

Para um container criado:
docker satop id_ou_apelido

Acessar terminal de container ativo:
docker attach id_container

Informações sobre o container:
docker stats id_ou_apelido

Compartilhar pastas:
docker run --name vm_print -itd -p 8080:80 -v oi/:/var/www/app tzorawski/devnode
docker run --name vm_print -itd -p 8080:80 -v oi:/var/www/app tzorawski/devnode

Excluir container:
docker rm id_ou_apelido