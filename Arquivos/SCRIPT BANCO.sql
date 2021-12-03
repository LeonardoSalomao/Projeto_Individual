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

select * from usuario;
select * from jogo;
select * from usuario join jogo on fk_usuario = id;