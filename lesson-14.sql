create database teste
default character set utf8 
default collate utf8_general_ci;

drop database teste;

use teste;

# DEFININDO COLUNAS
# COLUNA DATATYPE CONSTRAINT

# TIPO DE DADOS
# CHAR(SIZE): UMA STRING DE TAMANHO FIXO DE 0 A 255 CARACTERES | PODE TER LETRAS NÚMEROS CARACTERES ESPECIAIS | DEFAULT É 1
# VARCHAR(SIZE): UMA STRING DE TAMANHO VARIADO DE 0 A 65535 CARACTERES | PODE TER LETRAS NÚMEROS CARACTERES ESPECIAIS
# ENUM(VALUE1, VALUE2, ...): UM OBJETO DE STRING QUE SÓ PODE TER UM VALOR A PARTIR DE UMA LISTA DE POSSIBILIDADES | RECEBE UM ESPEÇO EM BRANCO SE FOR INSERIDO UM VALOR INVÁLIDO
# SET(VALUE1, VALUE2, ...): UM OBJETO DE STRING QUE PODE TER 0 OU MAIS VALORES A PARTIR DE UMA LISTA DE POSSIBILIDADES | POSSO LISTAR ATÉ 64 VALORES
# BOOL OU BOOLEAN: 0 É FALSO E QUALQUER OUTRO VALOR É VERDADEIRO
# INTEGER(SIZE) OU INT(SIZE): VALORES INTEIROS NO QUAL O SIZE ESPECIFICA O TAMANHO MÁXIMO | UNISIGNED INT CONSEGUE UM LIMITE MAIOR DE INTEIROS POSITIVOS
# FLOAT(SIZE, D): SIZE É O NÚMERO TOTAL DE DÍGITOS E D SÃO OS NÚMEROS APÓS A VÍRGULA (PONTO DECIMAL) | FOI DESCONTINUADO 
# DOUBLE(SIZE, D): SIZE É O NÚMERO TOTAL DE DÍGITOS E D SÃO OS NÚMEROS APÓS A VÍRGULA (PONTO DECIMAL)
# DEC(SIZE, D) OU DECIMAL(SIZE, D): SIZE É O NÚMERO TOTAL DE DÍGITOS E D SÃO OS NÚMEROS APÓS A VÍRGULA (PONTO DECIMAL) | PRECISÃO EXATA DE VALORES | NÚMERO EXATO DE PONTO FIXO (NÚMMERO DEPOIS DA VÍRGULA FIXO)
# DATE: DATA NO FORMATO YYYY-MM-DD
# TIME(FSP): HORA NO FORMATO HH:MM:SS | FSP SIGNIFICA FRACTIONAL SECONDS PRECISION E VAI DE 0 A 6
# DATETIME(FSP): UMA COMBINAÇÃO DE DATA E HORA NO FORMATO YYYY-MM-DD HH:MM:SS | ADICIONE DEFAULT E ON UPDATE PARA PEGAR OS VALORES DE DATA E HORA ATUAIS 
# TIMESTAMP(FSP): VALOR DE TEMPO DESDE ARMAZENADO DESDE A ÉPOCA DO UNIX (1970-01-01 00:00:00 UTC)
# YEAR: ANO NO FORMATO DE 4 DÍGITOS | DE 1901 A 2155 E 0000

# CONSTRAINTS (RESTRIÇÕES)
# NOT NULL: GARANTE QUE UMA COLUNA NÃO ASSUMA VALOR NULO
# UNIQUE: GARANTE QUE TODOS OS VALORES EM UMA COLUNA SÃO DIFERENTES
# PRIMARY KEY: UMA COMBINAÇÃO DE NOT NULL E UNIQUE (IDENTIFICA UNICAMENTE CADA LINHA EM UMA TABELA)
# FOREIGN KEY: IMPEDE AÇÕES QUE DESTRUÍRIAM RELAÇÕES ENTRE AS TABELAS
# CHECK: GARANTE QUE TODOS OS VALORES EM UMA COLUNA SATISFAÇAM UMA CONDIÇÃO ESPECÍFICA
# DEFAULT: DEFINE UMA VALOR PADRÃO PARA UMA COLUNA SE NENHUM VALOR É ESPECIFICADO
# CREATE INDEX: USADO PARA CRIAR E RECUPERAR DADOS DO BD MUITO RAPIDAMENTE


create table pessoas(
id int auto_increment primary key, # SÓ PODE HAVER UMA COLUNA COM AUTO INCREMENT E DEVE SER DEFINIDA COMO UMA CHAVE
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2), # DOS 5 DÍGITOS 2 FICAM APÓS A VÍRGULA
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil'
) default charset = utf8; # EVITA PROBLEMAS DE ACENTUAÇÃO

# TAMBÉM PODERIA DEFINIR A PRIMARY KEY NO FINAL DA TABELA
# PRIMARY KEY (id)

drop table pessoas;

describe pessoas; # OU SOMENTE DESC

# INSERE REGISTRO
insert into pessoas values
(default, 'Daniel Nogueira', '1996-03-20', 'M', '54', '1.7', default);

# EXIBE REGISTROS
select * from pessoas;

# ALTER TABLE
alter table pessoas
add column profissao varchar(15) after nome; # POSSO OMITIR O COLUMN | AO INVÉS DE AFTER POSSO USAR FIRST

alter table pessoas
drop column profissao;

alter table pessoas
modify profissao varchar(20) not null default 'agente comercial'; # MUDA O TIPO E AS CONSTRAINTS

alter table pessoas
change column profissao cargo varchar(20); # MUDA O NOME O TIPO E AS CONSTRAINTS

# MUDA O NOME DA TABELA
alter table pessoas
rename to usuarios;

# IF NOT EXISTS SÓ CRIA SE NÃO EXISTE
create table if not exists cursos ( 
id int,
nome varchar(30) unique not null,
qtdaulas int unsigned
);

# DEFININDO COMO PK DEPOIS
alter table cursos
add primary key(id);

insert into cursos values
('1', 'MySQL', '16');

show tables;
show databases;

describe cursos;
select * from cursos;

# UPDATE DELETE TRUNCATE
# ATUALIZAR O VALOR EM UM REGISTRO
# LIMIT LIMITA QUANTAS LINHAS SERÃO AFETADAS

update cursos 
set nome = 'MySQL', qtdaulas = '17'
where id = '1'
limit 1;

# APAGA REGISTRO
# WHERE ANO = 2019 PODERIA APAGAR VÁRIOS
delete from pessoas where id = '1';

# APAGA TODOS OS REGISTROS
# SÓ TRUNCATE CURSOS TAMBÉM FUNCIONA
truncate table cursos;		

# CHAMAMOS A CÓPIA DE UM BD DE DUMP
# COM O SERVIDOR LIGADO ACESSE O LOCALHOST NO COMPUTADOR

# OPERADORES
# = != <> < > <= >= between in

# OPERADORES LÓGICOS
# AND OR

# SAF WGH OA
# DENTRO DE IN ACEITA SEM ASPAS
select * from usuarios;
select nome, nascimento, nacionalidade from usuarios where nacionalidade = 'Brasil' order by nome asc;
select nome, nascimento, nacionalidade from usuarios where nacionalidade = 'Brasil' and nascimento between '1996-00-00' and '2023-00-00' order by nome asc;
select nome, peso, nacionalidade from usuarios where nacionalidade = 'Brasil' and peso in (50, 51, 53) order by nome asc;

delete from usuarios where id in (5);

# OPERADOR LIKE E WILDCARDS
# ACOMPANHA A CLÁUSULA WHERE PARA ESPECIFICAR UM DETERMINADO PADRÃO
# EXISTEM DOIS WILDCARDS (CORINGAS) USADOS EM CONJUNTO COM O OPERADOR LIKE % _
# % REPRESENTA NENHUM UM OU VÁRIOS CARACATERES
# _ REPRESENTA UM ÚNICO CARACTER

select * from cursos where nome like 'p%'; # COMEÇAM COM P
select * from cursos where nome like '%a'; # TERMINAM COM A
select * from cursos where nome like '%a%'; # TEM A EM QUALQUER LUGAR
select * from cursos where nome not like '%a%'; # TEM A EM LUGAR NENHUM E TAMBÉM NÃO EXIBIRÁ A COM ACENTO
select * from cursos where nome like '%o_'; # LETRA O SEJA A PENÚLTIMA LETRA E UNDERLINE SIGNIFICA A OBRIGAÇÃO DE UM CARACTER QUALQUER
select * from usuarios where nome like '%silva%'; # TEM SILVA NO MEIO DO NOME
select * from usuarios where nome like '%da silva'; # TEM DA SILVA NO FINAL DO NOME

# DISTINCT 
# PARA EXIBIR REGISTROS DISTINTOS
select distinct nacionalidade from usuarios order by nacionalidade; 

# COUNT
# PARA EXIBIR CONTAGENS
select count(*) from cursos;
select count(*) as 'Cursos acima de 30 aulas' from cursos where qtdaulas >= 30;