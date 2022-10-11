#!/bin/bash
echo ""
echo "Executando shellscript Basic_IaC_Script.sh"
echo ""

echo "Criando diretórios!"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo ""

echo "Criando grupos de usuários!"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo ""

echo "Cadastrando usuários e adicionando ao grupo."
echo "Departamento Vendas"
useradd carlos -c "Calos da Silva" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_ADM
passwd -e carlos
useradd maria -c "Maria das Graças" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_ADM
passwd -e maria
useradd joao -c "João Alberto" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_ADM
passwd -e joao
echo ""
echo "Departamento Administrativo"
useradd debora -c "Débora de Sá" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Sebastiana Serafin" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Roberto Martins" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_VEN
passwd -e roberto
echo ""
echo "Departamento Segurança"
useradd josefina -c "Josefina Almeida" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_SEC
passwd -e josefina
useradd amanda -c "Amanda Albuquerque" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Rogério Barbosa" -m -p $(openssl passwd -6 TrocarSenha123) -s /bin/bash -G GRP_SEC
passwd -e rogerio
echo ""

echo "Definindo proprietário dos diretórios."
chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo ""

echo "Definindo  permissões dos diretórios."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo""

echo "Shellscript finalizado."
