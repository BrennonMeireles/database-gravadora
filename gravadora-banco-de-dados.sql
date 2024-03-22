-- criando um banco de dados...
create database gravadora;

-- ativar o banco de dados
USE gravadora; 
-- criando a tabela cd
create table cd (
	codigo int primary key auto_increment, 
    nome varchar (100),
    gravadora varchar (100),
    dataGravacao date
);
-- criando a tabela cantor
create table cantor (
	codigo int primary key auto_increment,
    nome varchar (100),
    biografia varbinary (500)
);
-- criando a tabela musica que é associada a tabela cd e cantor
create table musica (
	numero int primary key auto_increment,
    titulo varchar (100),
    tempo int,
    genero varchar (100),
    
--  criando chaves estrangeiras de outras tabelas e fazendo o link delas na tabela atual
    cdCodigo int,
    cantorCodigo int,
    foreign key (cdCodigo) references cd (codigo),
    foreign key (cantorCodigo) references cantor (codigo)
);


