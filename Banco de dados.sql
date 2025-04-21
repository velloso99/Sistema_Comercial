-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados a ser utilizado
use dbinfox;
-- o bloco de instuções abaixo criar uma tabela
-- tabela de usuarios
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
-- tabela de clientes
create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(50) not null,
fonecli varchar(50) not null,
email varchar(50)
);
-- tabela de de serviços
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamentos varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);
-- o codigo abaixo traz onformações de duas tabelas
select 
O.os, equipamentos, defeito, servico, valor, 
C.nomecli, fonecli
from tbos as O 
inner join tbclientes as C
on (O.idcli = C.idcli);



