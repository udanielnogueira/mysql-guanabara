create database cadastro

# VOU ADICIONAR DUAS CONSTRAINTS
# VOU TER UMA CODIFICAÇÃO DE COLLATE
# VOU TER UMA CODIFICAÇÃO DE CARACTERE

default character set utf8 
default collate utf8_general_ci;

use cadastro;

# "DROP DATABASE X" FAZ APAGAR UM BD

# USO "NOT NULL" PARA OBRIGAR QUE DEVA POSSUIR UM VALOR

create table pessoas (
nome varchar(30) NOT NULL,
nascimento date, 
sexo enum('M','F'), # SÓ ACEITO M OU F
peso decimal(5,2), # DESSES 5, 2 DÍGITOS FICARÃO APÓS A VÍRGULA
altura decimal(3,2),
nacionalidade varchar(20) DEFAULT 'Brasil' # SE NÃO DIGITAR, POR PADRÃO SERÁ BRASIL
) default charset = utf8;

describe pessoas;
