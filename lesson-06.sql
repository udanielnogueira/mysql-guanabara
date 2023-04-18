INSERT INTO cursos VALUES
('1', 'HTML5', 'Curso de HTML5', '40', '37', '2023'),
('2', 'MySQL', 'Curso de Banco de Dados', '60', '40', '2023');

INSERT INTO cursos VALUES 
('3', 'Jarva', 'Curso de Java', '70', '67', '2023');

DESCRIBE cursos;

SELECT * FROM cursos;

# COMANDO PARA ATUALIZAR UM VALOR DE UM REGISTRO (TUPLA OU LINHA)
UPDATE cursos SET nome = 'Java' WHERE idcurso = '3';

# MUDANDO MAIS UM VALOR AO MESMO TEMPO
# USANDO O "LIMIT 1" PRA DIZER QUANTAS LINHAS SERÃO AFETADAS
UPDATE cursos SET nome = 'HTML5 e CSS3', totalaulas = '45' WHERE idcurso = '1' LIMIT 1;

# APAGANDO UM REGISTRO DA TABELA
DELETE FROM cursos WHERE idcurso = '2';

# WHERE ANO = '2023' IRIA FAZER UMA SELEÇÃO MÚLTIPLA

# TRUNCAR UMA TABELA É APAGAR TODOS O REGISTROS
# SÓ "TRUNCATE CURSOS" TAMBÉM FUNCIONA
TRUNCATE TABLE cursos;

# COMANDOS DDL (DATA DEFINITION LANGUAGE)
# "CREATE DATABASE" "CREATE TABLE" "ALTER TABLE" "DROP TABLE"

# COMANDOS DML (DATA MANIPULATION LANGUAGE)
# "INSERT INTO" "UPDATE" "DELETE" "TRUNCATE"