# RELACIONAMENTO DE MUITOS-PRA-MUITOS
# CRIO UMA TABELA PARA O RELACIONAMENTO ENTRE AS ENTIDADES

create table usuario_assiste_curso (
id int not null auto_increment,
data date,
idusuario int,
idcurso int,
primary key (id),
foreign key (idusuario) references usuarios (id),
foreign key (idcurso) references cursos (idcurso)
) default charset = utf8;

insert into usuario_assiste_curso values
(default, '2019-03-05', '1', '2');

select * from usuario_assiste_curso;

# FAZENDO INNER JOIN COM AS TRÊS TABELAS
# TENHO QUE PEGAR O USUARIOS E FAZER UM JOIN COM AS OUTRAS DUAS TABELAS
select u.nome, c.nome from usuarios as u
join usuario_assiste_curso as a
on u.id = a.idusuario
join cursos as c
on c.idcurso = a.idcurso
order by u.nome;