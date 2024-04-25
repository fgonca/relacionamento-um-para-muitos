-- ------------------------------------------------
-- FUNDAMENTOS DE BASE DE DADOS
-- - DML - Linguagem de Manipulação de Dados
-- 
-- @author Francisco Pedro Morais Gonçalves
-- https://github.com/fgonca
-- ------------------------------------------------


USE escola;

INSERT INTO turma (cod, classe, turno,sala)
VALUES ('1A', '1', 'Manhã', '1'),
('1B', '1', 'Tarde', '1'),
('2A', '2', 'Manhã', '2'),
('2B', '2', 'Tarde', '2');

SELECT * from turma;

INSERT INTO estudante (nome,sexo,data_nasc,turma)
VALUES ('Abel', 'M', '2001-01-01', '1A'),
('Bela', 'F', '2001-01-11', '1A'),
('Ngola', 'M', '2002-02-02', '2A'),
('Njinga', 'F', '2002-02-12', '2A'),
('Abel', 'M', '2003-03-03', NULL);

SELECT * FROM estudante;

