# USANDO O AS
select max(totalaulas) as MaisAulas from cursos where ano >= '2019';

# SAFWOA
select nome as 'Meus Cursos' from cursos where ano >= '2019' order by nome asc;

# DISTINCT E AGRUPAMENTOS
select distinct carga from cursos order by carga asc;
select carga, count(*) from cursos group by carga order by carga asc;

# AGRUPMENTOS COM FILTRO
select carga, count(*) from cursos where carga >= '50' group by carga order by carga asc;

select * from cursos;