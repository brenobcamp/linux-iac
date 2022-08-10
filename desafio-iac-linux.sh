#!/bin/bash

echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

echo "Criando grupos..."

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando usuários..."
useradd carlos -c "Carlos" -s /bin/bash -m -p $(openssl passwd "123")
passwd carlos -e 

useradd maria -c "Maria" -s /bin/bash -m -p $(openssl passwd "123")
passwd maria -e 

useradd joao -c "João" -s /bin/bash -m -p $(openssl passwd "123")
passwd joao -e 

useradd debora -c "Débora" -s /bin/bash -m -p $(openssl passwd "123")
passwd debora -e 

useradd sebastiana -c "Sebastiana" -s /bin/bash -m -p $(openssl passwd "123")
passwd sebastiana -e 

useradd roberto -c "Roberto" -s /bin/bash -m -p $(openssl passwd "123")
passwd roberto -e 

useradd josefina -c "Josefina" -s /bin/bash -m -p $(openssl passwd "123")
passwd josefina -e 

useradd amanda -c "Amanda" -s /bin/bash -m -p $(openssl passwd "123")
passwd amanda -e 

useradd rogerio -c "Rogério" -s /bin/bash -m -p $(openssl passwd "123")
passwd rogerio -e 

echo "Atribuindo grupos aos usuários..."

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


echo "Definindo permissões..."

chmod root:GRP_ADM /adm
chmod root:GRP_VEN /ven
chmod root:GRP_SEC /sec
chmod root:root /publico

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
