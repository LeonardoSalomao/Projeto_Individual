-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para sql server - remoto - produção */

create table leonardo_usuario (
	id int primary key identity(1,1),
	nome varchar(50),
	email varchar(50),
	senha varchar(50)
);

create table leonardo_jogo (
	idJogo  int primary key identity(100,1),
	NomeJogo varchar(100),
	fk_usuario int,
	foreign key (fk_usuario) references usuario(id)
);


/* para workbench - local - desenvolvimento */
CREATE DATABASE TeamfightGuides;

USE TeamfightGuides;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE jogo (
	idJogo  INT PRIMARY KEY AUTO_INCREMENT,
	NomeJogo VARCHAR(100),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
)auto_increment 100;