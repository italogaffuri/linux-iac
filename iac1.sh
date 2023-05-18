#!/bin/bash

echo "Criando os diretórios do sistema...."

mkdir /publico
mkdir /adm
mkdir /infra
mkdir /seg

echo "Criando os grupos do sistema...."

groupadd GRP_INFRA
groupadd GRP_ADM
groupadd GRP_SEG

echo "Criando os usuários do sistema...."

useradd carlos -c "Carlos Pereira" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_INFRA
passwd carlos -e
useradd maria -c "Maria Betânia" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_INFRA
passwd maria -e
useradd joao -c "João do Pé de Feijão" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_INFRA
passwd joao -e

useradd debora -c "Débora Nascimento" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd debora -e
useradd sebastiana -c "Sebastiana Mendes" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd sebastiana -e
useradd roberto -c "Roberto Félix" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
passwd roberto -e

useradd josefina -c "Josefina Fernandes" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEG
passwd josefina -e
useradd amanda -c "Amanda Lurdes" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEG
passwd amanda -e
useradd rogerio -c "Rogério Cortez" -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEG
passwd rogerio -e

echo "Definindo o dono dos diretórios...."

chown root:GRP_INFRA /infra
chown root:GRP_ADM /adm
chown root:GRP_SEG /seg

echo "Criando permissões dos usuários do sistema...."

chmod 777 /publico
chmod 770 /infra
chmod 770 /adm
chmod 770 /seg

echo "Finalizado com sucesso!!!"
