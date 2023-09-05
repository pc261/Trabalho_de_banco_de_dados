-- primeiro -- 
 select * from livros;

  -- segundo -- 
 select nome
 from autores 
 where nascimento <= '1900-01-01';

  -- terceiro --
select  titulo ,autor_id, nome
from livros l 
join autores a on a.id = l.autor_id
where a.nome = 'J.K. Rowling';

-- quarto -- 
select aluno_id, nome, curso
from alunos a
left join matriculas m on m.id  = a.id
where curso = "Engenharia de Software";

-- quinto -- 
select produto, sum(receita) as receita_t
from vendas
group by produto;

-- sexto -- 
select nome, count(autor_id) as total_de_livros_autor
from livros l 
join autores a on a.id = l.autor_id
group by nome;

-- setimo -- 
select curso,count(a.id) as quantidade_de_alunos
from alunos a
join matriculas m on m.id  = a.id
group by curso;

-- oitavo -- 
select produto,avg(receita) as media_por_produto
from vendas
group by produto;

-- nono  --
create view receita_total as 
select produto, sum(receita) as receita_t
from vendas
group by produto;

select *
from receita_total
where receita_t >= "10000.00";

-- decimo -- 
create view quantidade_de_livros as
select nome, count(autor_id) as total_de_livros_autor
from livros l 
join autores a on a.id = l.autor_id
group by nome;

select * 
from quantidade_de_livros
where total_de_livros_autor >= 2;

-- decimo primeiro --

create view livros_e_autores as
select titulo,nome
from livros l 
join autores a on a.id = l.autor_id;

select *
from livros_e_autores;

-- decimo segundo -- 
create view aluno_curso as
select nome, curso
from alunos a
right join matriculas m on m.id  = a.id;

select * 
from aluno_curso;

-- decimo terceiro -- 

insert into autores(id, nome, nascimento)
values (null,"PEDRO","2006-11-24");

select nome, titulo
from  autores a
left join  livros l  on a.id = l.autor_id;

-- decimo quarto --
select nome, curso
from alunos a
right join matriculas m on m.id  = a.id;

-- decimo quinto --
select nome, curso
from alunos a
inner join matriculas m on m.id  = a.id;

-- decimo sexto--
select nome as nome_autor, count(livros.id) as quantidade_de_livros
from autores
left join livros on autores.id = livros.autor_id
group by autores.id
order by quantidade_de_livros desc
limit 1;
