# NÃO PRECISO DO "ID" POR CAUSA DO AUTO_INCREMENT
# OU POSSO COLOCAR COM O VALUE SENDO DEFAULT

insert into pessoas
# (id, nome, nascimento, sexo, peso, altura, nacionalidade) PODE SER OMITIDO SE A ORDEM FOR A MESMA
values
(default, 'Danilo', '1995-05-30', 'M', '87.0', '1.80', 'Portugal'),
(default, 'Carlos', '1998-07-10', 'M', '70.0', '1.80', 'Argentina');

# EXIBE OS REGISTROS
select * from pessoas; 

# COMANDOS DDL (DATA DEFINITION LANGUAGE)
# CREATE DATABASE CREATE TABLE

# COMANDOS DML (DATA MANIPULATION LANGUAGE)
# INSERT INTO
