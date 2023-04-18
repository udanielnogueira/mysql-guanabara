USE cadastro;

INSERT INTO cursos VALUES
('2', 'MySQL', 'Curso de Banco de Dados', '60', '40', '2016'),
('3', 'Java', 'Curso de Java', '70', '67', '2023'),
('4', 'Algortimos', 'Curso de Algoritmos', '20', '15', '2018'),
('5', 'Photoshop', 'Curso de Photoshop', '10', '8', '2018'),
('6', 'PHP', 'Curso de PHP', '60', '20', '2019'),
('7', 'Word', 'Curso de Word', '60', '29', '2019');

DESCRIBE cursos;
SELECT * FROM cursos;

INSERT INTO usuarios VALUES
(default, 'Sara', ' ', '1999-05-30', 'F', '78.0', '1.67', 'Brasil'),
(default, 'Bruno', ' ', '1999-04-30', 'M', '78.0', '1.67', 'Argentina'),
(default, 'Marcos', ' ', '1998-03-30', 'M', '78.0', '1.70', 'Argentina'),
(default, 'Sandra', ' ', '1998-02-30', 'F', '89.0', '1.70', 'Argentina'),
(default, 'Rafaela', ' ', '1997-07-30', 'F', '89.0', '1.67', 'Brasil');

DESCRIBE usuarios;
SELECT * FROM usuarios;

SELECT * FROM cursos ORDER BY nome;
# POSSO EXIBIR POR ORDEM INVERSA DE NOME
# SELECT * FROM cursos ORDER BY nome DESC;
# ESSE DESC É DE DESCENDENTE E NÃO DE DESCRIBE
# TAMBÉM POSSO USAR ASC DE ASCENDENTE

# TIRO ASTERISCO E COLOCO SÓ AS COLUNAS QUE QUERO
SELECT nome, carga, ano FROM cursos ORDER BY nome ASC;

# VIMOS COMO FILTRAR COLUNAS
# AGORA COMO FILTRAR ALGUNS REGISTROS? USAMOS O COMANDO WHERE
# ISSO VAI GERAR UM RESULT SET DE ACORDO COM A SUA QUERY (SOLICITAÇÃO)

select nome, descricao, totalaulas from cursos where ano >= '2018' order by nome asc;
select nome, carga, ano from cursos where ano between 2019 and 2023 order by ano desc, nome asc;
select nome, descricao from cursos where ano in (2018, 2019, 2023) order by nome;
# = != <> < > <= >= between in

# TAMBÉM POSSO USAR OPERADORES LÓGICOS
# select nome, ano, totalaulas from cursos where ano >= 2018 or totalaulas >= 15 order by ano asc;
select nome, ano, totalaulas from cursos where ano >= 2018 and totalaulas >= 15 order by ano asc;

# APAGAR VÁRIOS REGISTROS DE UMA SÓ VEZ
# DELETE FROM cursos WHERE idcurso IN (3, 4, 5, 6, 7);

# COMANDOS DDL (DATA DEFINITION LANGUAGE)
# "CREATE DATABASE" "CREATE TABLE" "ALTER TABLE" "DROP TABLE"

# COMANDOS DML (DATA MANIPULATION LANGUAGE)
# "INSERT INTO" "UPDATE" "DELETE" "TRUNCATE" "SELECT"

# COMANDOS DQL (DATA QUERY LANGUAGE)
# "SELECT"

# ALGUNS AUTORES DEFINEM O SELECT COMO DDL OUTRO COMO DQL