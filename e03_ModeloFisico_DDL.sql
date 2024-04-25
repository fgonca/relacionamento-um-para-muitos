-- ------------------------------------------------
-- FUNDAMENTOS DE BASE DE DADOS
-- - Modelo Físico
--		- DDL - Linguagem de Definição de Dados
-- 
-- @author Francisco Pedro Morais Gonçalves
-- https://github.com/fgonca
-- ------------------------------------------------


CREATE DATABASE escola;
USE escola;

CREATE TABLE turma (
	cod CHAR(2),
    classe INT DEFAULT NULL,
    turno ENUM('Manhã','Tarde') DEFAULT NULL,
    sala INT DEFAULT NULL,
    PRIMARY KEY (cod)
);

CREATE TABLE estudante (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    sexo ENUM('M','F') NOT NULL,
    data_nasc DATE DEFAULT NULL,
    turma CHAR(2) DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (turma) REFERENCES turma (cod)
);

/*NOTA: O MySQL está configurado com ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
De outra forma, temos que incluir a configuração em cada tabela, como na tabela turma.*/
