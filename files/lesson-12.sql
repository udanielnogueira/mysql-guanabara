select * from usuarios;
select * from cursos;

# RELACIONAMENTO 1-PRA-1 A ENTIDADE DOMINANTE GANHA UMA CHAVE ESTRANGEIRA DA OUTRA
# RELCIONAMENTO 1-PRA-MUITOS A ENTIDADE DOS MUITOS GANHA UMA CHAVE ESTRANGEIRA DA OUTRA
# RELACIONAMENTO MUITOS-PRA-MUITOS O RELACIONAMENTO VIRA UMA ENTIDADE COM ATRIBUTOS E N PERTO DELA (COM 1 AFASTADOS)

# USUARIOS N PREFERE 1 CURSOS
# A ENTIDADE DO MUITOS GANHA A CHAVE ESTRANGEIRA
# A ENTIDADE USUARIOS GANHA A CHAVE ESTRANGEIRA DE CURSOS

describe cursos;
describe usuarios;

# PRIMEIRO PASSO É CRIAR A VARIÁVEL
alter table usuarios add column idcurso int;

# SEGUNDO PASSO É RELACIONAR A VARIÁVEL COMO FK
alter table usuarios add foreign key (idcurso) references cursos(idcurso); 

select * from usuarios;
select * from cursos;

# TERCEIRO PASSO É RELACIONAR CADA USUÁRIO COM O CURSO
update usuarios set idcurso = '2' where id = '1';

# POSSO INSERIR O CURSO PREFERIDO DE CADA UM DE FORMA MANUAL

# INTENGRIDADE REFERENCIAL É NÃO DEIXAR UM REGISTRO SER APAGADO SE ELE TEM RELAÇÃO COM ALGUÉM
# O CURSO DE MYSQL NÃO PODE SER APAGADO PORQUE ELE ESTÁ EM UM RELACIONAMENTO COM O DANILO
# AGORA UM CURSO QUE NÃO ESTÁ RELACIONADO PODERÁ SER APAGADO NORMALMENTE

# EXIBINDO DE FORMA COMUM
select nome, idcurso from usuarios;

# COMO EXIBIR DE FORMA LIGADA?
# PARA O PERFEITO FUNCIONAMENTO O ON DEVE ACOMPANHAR O JOIN
# ATÉ FUNCIONA SEM O ON, MAS O RESULTADO É TOTALMENTE FORA DO ESPERADO
# SÓ O COMANDO JOIN ELE ESTÁ FAZENDO UM INNER JOIN, MOSTRANDO SÓ OS QUE TEM RELAÇÃO
select usuarios.nome, cursos.nome, cursos.ano from usuarios join cursos on usuarios.idcurso = cursos.idcurso order by usuarios.nome;

# USANDO APELIDOS
# SÓ PRECISO DO NOME COMPLETO EM FROM E JOIN
select u.nome, c.nome, c.ano from usuarios as u inner join cursos as c on u.idcurso = c.idcurso order by u.nome;

# OUTER JOIN
# PRECISO MOSTRAR SE É LEFT OU RIGHT
# QUANDO USO LEFT JÁ SEI QUE É UM OUTER JOIN
select u.nome, c.nome, c.ano from usuarios as u left outer join cursos as c on u.idcurso = c.idcurso order by u.nome;

# FAZENDO UM RIGHT JOIN
select u.nome, c.nome, c.ano from usuarios as u right join cursos as c on u.idcurso = c.idcurso order by u.nome;

# CROSS JOIN
select * from usuarios cross join cursos;