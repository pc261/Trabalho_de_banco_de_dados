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