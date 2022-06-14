# DESCREVE A TABELA
# PODE SER "DESC" OU "DESCRIBE"
desc pessoas; 

# ADICIONA UM CAMPO
alter table pessoas
add column profissao varchar(10);

# REMOVE UM CAMPO
alter table pessoas
drop column profissao;

# ADICIONA UM CAMPO DEPOIS DE UM OUTRO
# O "COLUMN" É ADICIONAL
alter table pessoas
add profissao varchar(10) after nome;

# PRA ADICIONAR COMO PRIMEIRO "ADD CODIGO INT FIRST"

# MODIFICA O TIPO E CONSTRAINTS
# SE EU COLOCAR QUE NÃO PODE SER NULO, ENTAO ADICIONO UM DEFAULT VAZIO
alter table pessoas
modify profissao varchar(20) not null default ' ';

# PARA MUDAR O NOME DE UM CAMPO
# "CHANGE PROFISSAO PROF VARCHAR(20)"

# RENOMEAR UMA TABELA
alter table pessoas
rename to humanos;

#ADICIONANDO UMA NOVA TABELA
create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2022'
) default charset = utf8;

desc cursos;

# ADICIONAR UMA CHAVE PRIMÁRIA EM CURSOS
alter table cursos
add idcurso int first;

alter table cursos
add primary key(idcurso);

# "DROP TABLE ..." APAGA UMA TABELA

select * from humanos;

# COMANDOS DDL (DATA DEFINITION LANGUAGE)
# "CREATE DATABASE" "CREATE TABLE" 'ALTER TABLE" "DROP TABLE"

# COMANDOS DML (DATA MANIPULATION LANGUAGE)
# "INSERT INTO"
