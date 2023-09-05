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