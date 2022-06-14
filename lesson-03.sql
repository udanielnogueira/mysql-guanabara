# NÃO PRECISO DO "ID" POR CAUSA DO AUTO_INCREMENT
# OU POSSO COLOCAR, COM O VALUE SENDO DEFAULT

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default, 'Ane', '1997-10-30', 'F', '54.0', '1.60', 'Brasil');

# EXIBE OS REGISTROS
select * from pessoas; 
