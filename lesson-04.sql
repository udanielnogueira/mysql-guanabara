# "DESC" OU "DESCRIBE"
desc pessoas; 

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

# O "COLUMN" É ADICIONAL
alter table pessoas
add profissao varchar(10) after nome;

# NÃO PODE SER NULO, ENTAO ADICIONO UM DEFAULT VAZIO
alter table pessoas
modify profissao varchar(20) not null default ' ';

# PRA ADICIONAR COMO PRIMEIRO
# "ADD COLUMN CODIGO INT FIRST"

select * from pessoas;
