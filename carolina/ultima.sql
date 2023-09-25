create schema revisao_m;
use revisao_m;

CREATE TABLE area ( 
	codigo int primary key ,
	descricao varchar (30),
	predio varchar (40)
);
CREATE TABLE curso (
	codigo int primary key ,
	nome varchar (40) not null,
	cod_area int,
	vagas integer,
	nome_coordenador varchar(50),
	foreign key (cod_area) 
                     references area (codigo)	
);

CREATE TABLE aluno (
	matricula int primary key ,
	nome varchar (50) not null,
	cidade_endereco varchar (30),
	telefone int,
	mensalidade decimal (6,2),
	media_notas decimal (3,1) not null,
	data_nascimento date,
	cod_curso int not null,
	foreign key (cod_curso) 
	       references curso (codigo)
);

insert into area values
  (1,"Exatas", "Bloco C"), (2,"Saúde", "Bloco B"),
  (3,"Humanas", "Bloco A");

insert into curso values
  (1,"Informatica para Internet", 1, 20, "Francisco"),
  (2,"Nutrição", 2, 25, null),
  (3,"Enfermagem", 2, 30, "Maria"),
  (4,"Ciências da Computação", 1, 30, null),
  (5,"Redes de Computadores", 1, 20, "Zilmara"),
  (6,"Odontologia", null, 18, null);

INSERT INTO aluno  values
  (1,"Mariana Torres", "Recife",   null, 815.78, 8.9, '1998-10-19', 1), 
  (2,"Carolina Pereira", "Olinda", 982736410, 726.37, 7.5, null, 1), 
  (3,"Adriano Freire", "Palmares", NUll, 982.62, 5.2, '1994-07-05', 5), 
  (4,"Elaine Villas", "Olinda",    902816253, 856.01, 5.8, '2000-04-29', 3),
  (5,"Paulo Veras", "Olinda", 976253123, 582.71, 6.3, '1988-03-30', 3),
  (6,"Talita Veiga", "Jaboatão", 952434172, 837.29, 8.7, '1990-11-23', 4), 
  (7,"Katia Garcia", "Palmares", 962534122, 526.62, 9.7, '1991-10-19', 5), 
  (8,"Júlio Mercedes", "Palmares", null, 837.73, 7.6, null, 3), 
  (9,"Fátima Silva", "Jaboatão",   981722639, 549.91, 9.4, '1986-09-04', 5);
  
--  1)      Exibir a quantidade de cursos que cada área tem. Áreas sem cursos relacionados devem aparecer com 0.
select * from curso;
select * from area;
select * from aluno;
select area.descricao,count(curso.codigo) from curso
right JOIN area on area.codigo=curso.cod_area group by descricao;

-- 2)      Exibir a relação de nomes da área, do curso e dos alunos, além das médias, ordenados decrescentemente pela média.
select * from curso;
select * from area;
select * from aluno;

select area.descricao, curso.nome, aluno.nome, aluno.media_notas from curso 
right JOIN area on area.codigo=curso.cod_area right join aluno on aluno.matricula=curso.cod_area order by aluno.media_notas desc;

-- 3)     Apresentar a lista de nomes dos cursos e de seus alunos ordenados pelo nome do curso e depois pelo nome dos alunos. Os cursos que não tiverem alunos matriculados devem aparecer acompanhados de null.
select * from curso;
select * from area;
select * from aluno;

select;

-- 4)          Para cada área, deve exibir o nome e a quantidade de alunos matriculados em cursos dessa área.
-- 5)          Qual a média das mensalidades pagas em cada curso? Cursos sem alunos devem exibir 0.
-- 6)          Qual a maior e a menor mensalidade paga por curso?
-- 7)          Qual o valor total arrecadado pelas mensalidades?

select sum(mensalidade) from aluno;
-- 8)          Relacione o nome, o curso e a média dos alunos que estudam moram em Jaboatão tem mais de 15 anos.
-- 9)          Quantos alunos tem o curso de Redes de Computadores?
-- 10)      Relacionar os nomes dos alunos, suas médias e o nome do curso que eles cursam ordenados decrescentemente pelo valor da mensalidade de cada um.
-- 11)      Quais são os nomes dos alunos que não moram em Recife, que pagam mais de 600 reais de mensalidade e nasceram nos anos 90?
-- 12)      Qual a quantidade de vagas, de alunos matriculados e vagas disponíveis que existem em cada curso?
-- 13)      Quais os nomes e a cidades dos alunos que possuem as duas maiores médias? Exibir as colunas 'ALUNO' e 'ENDEREÇO‘
-- 14)      Quantos cursos acontecem em cada prédio?
-- 15)      Em quais prédios acontecem as aulas de pelo menos 3 cursos?
-- 16)      Quantos alunos faltam para completar a turma do curso de Enfermagem?
-- 17)      Quais os cursos dos alunos que moram em Olinda e Recife? Não deve aparecer nomes em duplicidade.
-- 18)      Apresente os nomes e as datas de nascimento em ordem crescente dos alunos que estão com a média entre 7.2 e 8.9 e estão no curso com maior quantidade de alunos.
-- 19)      Relacionar os nomes das áreas, dos cursos, e dos coordenadores ordenados pelo nome da área e depois pelo nome do curso. Devem aparecer cursos sem área e área sem cursos, caso existam.
-- 20)      Quais são os alunos que não cadastraram data de nascimento nem telefone?
  select * from curso;
select * from area;
select * from aluno
  
  