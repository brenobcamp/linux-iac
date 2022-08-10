#!/bin/bash

echo "Criando diretórios..."
mkdir /publico /adm /ven /sec

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