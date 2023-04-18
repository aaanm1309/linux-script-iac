#!/bin/bash

echo "****************************************"
echo "Limpando Anteriores"
echo "****************************************"



echo "****************************************"
echo "Limpando usuarios"
echo "****************************************"

echo "****************************************"
cat /etc/passwd
echo "****************************************"

userdel -r carlos
userdel -r maria
userdel -r joao
userdel -r debora
userdel -r sebastiana
userdel -r roberto
userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "****************************************"
cat /etc/passwd
echo "****************************************"

echo "****************************************"
echo "Limpando Grupos"
echo "****************************************"

echo "****************************************"
cat /etc/group
echo "****************************************"

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "****************************************"
echo "Limpando Diretorios"
echo "****************************************"

rm /publico -Rf
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec


