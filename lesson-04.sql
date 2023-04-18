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

# PARA MUDAR O TIPO CONSTRAINTS E O NOME DE UM CAMPO
# "CHANGE COLUMN PROFISSAO PROF VARCHAR(20)"

# RENOMEAR UMA TABELA
alter table pessoas
rename to usuarios;

#ADICIONANDO UMA NOVA TABELA
create table if not exists cursos(
nome varchar(30) not null unique, # NÃO VAI DEIXAR COLOCAR DOIS CURSOS COM O MESMO NOME
descricao text, # "TEXT" É PARA TEXTOS LONGOS
carga int unsigned,
totalaulas int unsigned, # NÃO ACEITA UM NÚMERO NEGATIVO E AINDA ECONOMIZA 1 BYTE
ano year default '2022'
) default charset = utf8;

desc cursos;

# ADICIONAR UMA CHAVE PRIMÁRIA EM CURSOS
alter table cursos
add idcurso int first;

alter table cursos
add primary key(idcurso);

# "DROP TABLE CURSOS" APAGA A TABELA CURSOS

select * from usuarios;

# COMANDOS DDL (DATA DEFINITION LANGUAGE)
# "CREATE DATABASE" "CREATE TABLE" "ALTER TABLE" "DROP TABLE"

# COMANDOS DML (DATA MANIPULATION LANGUAGE)
# "INSERT INTO"