-- ------------------------------------------------
-- FUNDAMENTOS DE BASE DE DADOS
-- - Modelo Físico
--		- Vista (View)
-- 
-- @author Francisco Pedro Morais Gonçalves
-- https://github.com/fgonca
-- ------------------------------------------------

# DDL - Linguagem de Definição de Dados

USE escola;

CREATE VIEW v_turma AS SELECT 
turma.cod,
turma.classe,
turma.turno,
turma.sala,
estudante.id,
estudante.nome,
estudante.sexo,
estudante.data_nasc
FROM turma
JOIN estudante
ON turma.cod = estudante.turma
ORDER BY nome;

-- -----------------------------------------------------------------------------------------------
# DML - Linguagem de Manipulação de Dados

SELECT * FROM v_turma;

