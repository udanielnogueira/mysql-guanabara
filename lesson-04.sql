# "DESC" OU "DESCRIBE"
desc pessoas; 

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

# O "COLUMN" É ADICIONAL
alter table pessoas
add profissao varchar(10) after nome;

# PRA ADICIONAR COMO PRIMEIRO
# "ADD COLUMN CODIGO INT FIRST"

select * from pessoas;
