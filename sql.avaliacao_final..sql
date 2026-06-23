-- Q01 --
use academia_movimento;

-- Q02 --
use academia_movimento;
show tables;

-- Q03 --
show columns
from alunos;

-- 04 --
select count(*) As Total_pagametos
from pagamentos;

-- 05 --
select *
from planos
order by valor_mensal desc

-- 06--
create table equipamentos (
   id        INT AUTO_INCREMENT PRIMARY KEY,
   nome      VARCHAR(60) NOT NULL,
   marca     VARCHAR(40),
   data_compra DATE,
   em_uso    BOOLEAN DEFAULT TRUE
);
-- 07 --
ALTER TABLE alunos
ADD COLUMN telefone VARCHAR(15);

-- 08 --
drop table equipamentos;

-- 09 --
INSERT into alunos (nome, email, data_matricula, data_nascimento, plano_id, ativo)
VALUES ('Mariana Rocha', 'mariana.r@email.com', CURDATE(), '1995-06-15', 2, TRUE);

-- 10 --
update instrutores
set salario = salario * 1.08
where salario < 3700.00;

-- 11 --

-- 12 --
select nome, email, data_matricula
from alunos
where ativo = true
order by data_matricula desc;

-- 13 --
select nome, salario
from instrutores
where  especialidade != 'Yoga'
order by salario asc;

-- 14 --
select nome, valor_mensal
from planos
where valor_mensal between 100.00 and 200.00;

-- 15 --
select nome
from alunos
where nome like 'A%' or nome like '%Souza%';

-- 16 --
select a.nome, p.nome As plano
from alunos a
left join planos p on a.plano_id = p.id;




-- 23 --
select nome
from instrutores
where id not in (select instrutor_id from aulas);
