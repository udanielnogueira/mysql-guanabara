# USANDO O AS
select max(totalaulas) as MaisAulas from cursos where ano >= '2019';

# SAF WGH OA
select nome as 'Meus Cursos' from cursos where ano >= '2019' order by nome asc;

# DISTINCT E AGRUPAMENTOS
select distinct carga from cursos order by carga asc;
select carga, count(*) from cursos group by carga order by carga asc;

# AGRUPMENTOS COM FILTRO
select carga, count(*) from cursos where carga >= '50' group by carga order by carga asc;

# AGRUPAMENTOS COM HAVING
# HAVING É UM COMPLEMENTO DO GROUP BY
# HAVING SÓ ACEITA O ATRIBUTO QUE AGRUPEI
select ano, count(*) from cursos group by ano order by count(*) asc;
select ano, count(*) from cursos group by ano having ano >= '2018' order by ano asc;

# POSSO USAR WHERE COM HAVING
select ano, count(*) as 'Cursos Mais Recentes' from cursos where totalaulas > '20' group by ano having ano >= '2018' order by ano asc;

# SELECT DENTRO DE OUTRO
select carga, count(*) as 'Cursos depois de 2015 com carga acima da média' from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos) order by carga asc;

# SAF WGH OA
select * from cursos;