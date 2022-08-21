#!/bin/bash

echo "Digite o nome do usuário que deseja criar: "
read nome

echo "Digite o grupo de acesso que este usuário irá pertencer (Ex: GRP_ADM): "
read grupo

#Comando para criar o usuário e grupo digitado
useradd $nome -m -s /bin/bash -p $(opessl passwd -crypt Senha123) -G $grupo

echo "Digite a pasta de trabalho deste usuário de acordo com o seu setor, caso não exista (Ex: /nomedapasta)."
read pasta

#Aqui irá criar a pasta de trabalho de acordo com o que foi digitado pelo admin
mkdir $pasta

echo "Criando permissões de pasta"

#Aplicar o dono da pasta, no caso o root
chown root:$grupo $pasta

echo "Digite o tipo de permissão que quer dar (UGO - Ex: 777, 700, 770)"
read permissao

#Aqui irá conceder as permissões de acordo com os acessos
chmod $permissao $pasta

