#!/bin/bash


echo "****************************************"
echo "Criando diretorios"
echo "****************************************"

cd /
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "****************************************"
ls -l /
echo "****************************************"

echo "****************************************"
echo "Criando Grupos"
echo "****************************************"

echo "****************************************"
cat /etc/group
echo "****************************************"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "****************************************"
cat /etc/group
echo "****************************************"

echo "****************************************"
echo "Criando Usuarios"
echo "****************************************"

echo "****************************************"
cat /etc/passwd
echo "****************************************"

useradd -G GRP_ADM carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha1) 
useradd -G GRP_ADM maria -m -s /bin/bash -p $(openssl passwd -crypt Senha1)
useradd -G GRP_ADM joao -m -s /bin/bash -p $(openssl passwd -crypt Senha1)

useradd -G GRP_VEN debora -m -s /bin/bash -p $(openssl passwd -crypt Senha1)
useradd -G GRP_VEN sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha1)
useradd -G GRP_VEN roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha1)

useradd -G GRP_SEC josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha1)
useradd -G GRP_SEC amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha1)
useradd -G GRP_SEC rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha1)

echo "****************************************"
cat /etc/passwd
echo "****************************************"

echo "****************************************"
echo "Alterando Permissoes"
echo "****************************************"

echo "****************************************"
echo "Alterando Permissoes de diretorios"
echo "****************************************"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "****************************************"
echo "Finalizando Script"
echo "****************************************"

