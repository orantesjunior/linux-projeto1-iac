#!/bin/bash

echo "Criar os diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criar os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criar usuários e seus vincular diretórios..."

sudo useradd carlos -m -c "Carlos Adm" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd maria -m -c "Maria Adm" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd joao -m -c "João Adm" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
sudo useradd debora -m -c "Débora Ven" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd sebastiana -m -c "Sebastiana Ven" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd roberto -m -c "Roberto Ven" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
sudo useradd josefina -m -c "Josefina Sec" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd amanda -m -c "Amanda Sec" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
sudo useradd Rogerio -m -c "Rogério Sec" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Patrametrizar as permissões dos usuários nos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim do script."
