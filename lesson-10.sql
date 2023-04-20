# LIKE É UM OPERADOR 
# % SUBSTITUI NENHUM OU VÁRIOS CARACTERES
# NÃO É CASE SENSITIVE, OU SEJA, P OU p NÃO FAZ DIFERENÇA

# COMEÇAM COM P
select * from cursos where nome like 'p%';

# TERMINAM COM A
select * from cursos where nome like '%a';

# TEM A EM QUALQUER LUGAR
select * from cursos where nome like '%a%';

# TEM A EM LUGAR NENHUM
# TAMBÉM NÃO EXIBIRÁ A COM ACENTO
select * from cursos where nome not like '%a%';

# LETRA O SEJA A PENÚLTIMA LETRA
# UNDERLINE SIGNIFICA A OBRIGAÇÃO DE UM CARACTER QUALQUER
select * from cursos where nome like '%o_';

# TEM SILVA NO NOME
select * from usuarios where nome like '%silva%';

# TEM DA SILVA NO NOME
select * from usuarios where nome like '%da silva';

# APENAS REGISTROS DISTINTOS
select distinct ano from cursos order by ano; 

# EXIBIR CONTAGENS
select count(*) from cursos;
select count(*) from cursos where carga >= 30;

# FUNÇÕES DE AGREGAÇÃO
select min(ano) from cursos;
select max(carga) from cursos;
select max(totalaulas) from cursos where ano = 2019;
select nome, max(totalaulas) from cursos where ano = 2019; # EXIBINDO COM COLUNA
select sum(totalaulas) from cursos;
select avg(totalaulas) from cursos;

select * from cursos; 