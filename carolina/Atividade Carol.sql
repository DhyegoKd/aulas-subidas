-- drop schema alunos_ninho_m;
create schema alunos_ninho_M;
use alunos_ninho_M;

create table endereco (
    codigo integer auto_increment primary key,
    bairro varchar(40),
    cidade varchar(50),
    unique (bairro,cidade)
);

create table curso (
    id integer auto_increment primary key,
    nome varchar(50),
    campus varchar(50),
    instituicao varchar(40),
    unique (nome, campus, instituicao)
);
   
create table aluno(
    matricula integer auto_increment primary key,
    nome varchar(50),
    idade integer,
    turno varchar(30),
    id_curso integer,
    foreign key (id_curso) references curso (id),
    cod_endereco integer,
    foreign key (cod_endereco) references endereco (codigo)
);

insert into endereco (bairro, cidade) values
('Jardim São Paulo','Recife'),('Cruz de Rebouças','Recife'),
('Cordeiro','Recife'),('Corrégo do Jenipapo','Recife'),
('Caetés Velho','Abreu e Lima'),('Caetés III','Abreu e Lima'),
('Barro','Recife'),('Aguas Compridas','Olinda'),('Alberto Maia','Camaragibe'),
('Apipucos','Recife'),('Areias','Recife'),('Arruda','Recife'),
('Cavaleiro','Jaboatão dos Guararapes'),('Celeiro das Alegrias Futuras','Camaragibe'),
('Charnequinha','Cabo de Santo Agostinho'),('Cajueiro seco','Jaboatão dos Guararapes'),
('Campo Grande','Recife'),('Casa Amarela','Recife'),
('Ibura de Baixo','Recife'),('Iputinga','Recife'),
('Centro','Recife'),(null,'Jaboatão dos Guararapes'),
('Centro','Abreu e Lima'),('Arthur Lundgren 2','Abreu e Lima'),
('Barra de Jangada','Jaboatão dos Guararapes'),('Janga','Paulista'),
('Jardim Jordão','Jaboatão dos Guararapes'),('Dois Irmãos','Recife'),
('Engenho do Meio','Recife'),('Ibura','Recife'),
('Prado','Recife'),('San Martin','Recife'),
('São Benedito','Olinda'),('Tejipió','Recife'),
('Timbi','Camaragibe'),('Torre','Recife'),
('Nova Descoberta','Recife'),('Pirapama','Jaboatão dos Guararapes'),
('Ponte dos Carvalhos','Cabo de Santo Agostinho'),('UR-6 (Ibura)','Jaboatão dos Guararapes'),
('UR-11 (Ibura)','Jaboatão dos Guararapes'),('Torrões','Recife'),
('Totó','Recife'),('UR-07 (Várzea)','Recife'),('Loteamento Grande Recife','Recife'),
('Monte Verde','Itapissuma'),('Várzea','Recife'),('Porto da Madeira','Recife'),
('UR-2 (Ibura)','Recife'),('Centro','Itapissuma');

insert into curso (nome, instituicao, campus) values
('Administração','ETE','Abreu e Lima'),('Publicidade','ETE','Recife'),
('Engenharia de Computação','Faculdade','Graças'),('Edificações','IFPE','Recife'),
('Gestão de Recursos Humanos','UNIFAFIRE','Recife'),('artes visuais','IFPE','Olinda'),
('Geografia','UFPE','Recife'),('Análise e desenvolvimento de sistemas','ETE','Recife'),
('Desenvolvimento de Sistemas','ETE','Recife'),
('Desenvolvimento de Sistemas','ETE','Ginásio Pernambucano'),
('Eletrônica','IFPE','Recife'),('Administração','ETE','Lucilo Ávila Pessoa'),
('Pedagogia','UNICAP','Recife'),('Eletrotécnica','IFPE','Recife'),
('Engenharia da Computação','UFPE','Recife'),('Odontologia','FPS','Rcife'),
('Informática para Internet','IFPE','Jaboatão dos Guararapes'),('Informática para Internet','IFPE','Igarassu'),
('Marketing','ETE','Dom Bosco'),('Desenvolvimento de sistemas','ETE','Porto Digital'),
('Publicidade','ETE','Dom Bosco'),('Redes de Computadores','ETE','Lucilo Ávila Pessoa'),
('Redes de Computadores','ETE','Pastor Isaac Martins Rodrigues'),('Redes de Computadores','ETE','Iputinga'),
('segurança do trabalho','ETE','Cabo de Santo Agostinho'),('Segurança do Trabalho','IFPE','Ipojuca'),
('Segurança do trabalho','IFPE','Abreu e Lima'),('Qualidade','IFPE','Jaboatão dos Guararapes'),
('Química','IFPE','Recife'),('Redes de Computadores','ETE','Recife'),
('Redes de Computadores','ETE','Abreu e Lima'),('Saneamento Ambiental','IFPE','Recife'),
('Segurança do Trabalho','IFPE','Recife');

insert into aluno (turno,nome,idade,cod_endereco,id_curso) values
('Manhã','Thiago Lima dos Santos','18','6','1'),('Manhã','Luís Miguel Santos Moura','18','23','31'),
('Tarde','Nayara Maria Silva de Lima','20','8','33'),('Tarde','João Barros da Silva Neto','18','9','15'),
('Manhã','Gabriel Lima dos Santos','21','10','11'),('Manhã','Yaclara Eliza Olimpio das Chagas Silva','18','11','2'),
('Manhã','Pedro Henrique de Souza Marques','20','12','11'),('Tarde','Cíntia chacon marinho','19','12','9'),
('Manhã','André Felipe da Silva Braga','18','24','31'),('Manhã','Mateus Silva Coutinho','19','25','32'),
('Manhã','João Victor Coutinho Freitas','20','7','17'),('Manhã','Moroni Pereira de Medeiros','19','6','14'),
('Tarde','Rayanne Maria Rodrigues da Silva','18','5','23'),('Manhã','Thamires Elifelete Soares da Silva','19','16','33'),
('Tarde','Giovanna Dafine Caique de Santana Cavalcante','23','17','33'),('Manhã','Maria Eduarda de Souza Rocha Silva','20','18','33'),
('Manhã','Lana Cláudia Gonçalves dos santos','24','13','17'),('Tarde','Maria Vitória Vieira da Silva','23','13','33'),
('Tarde','Natanael José da Silva','18','14','29'),('Manhã','Fernando Junio','22','15','25'),
('Tarde','yago victor','18','3','22'),('Tarde','Marcos Kaiô Belarmino Santana','19','3','33'),
('Manhã','Larissa Evelyn Macedo de Santana','21','4','5'),('Tarde','Kleber lucas da silva cavalcante','19','2','33'),
('Tarde','Stefany Maria Barbosa Oliveira','23','2','27'),('Tarde','Tacio de Almeida Mélo','22','28','14'),
('Manhã','José Nelson da Silva','23','28','32'),('Tarde','Keyla Henrique Beatriz da Silva','21','28','33'),
('Tarde','Rebeca Alves dos Santos','20','29','12'),('Manhã','Jônatas Oliveira de Lima','19','30','22'),
('Manhã','Osana Nicole Alves de Lima','19','19','20'),('Manhã','Caio Henrique Simões da Silva','18','20','7'),
('Tarde','Dhyego Kaderline Dos Santos Tenório','18','20','22'),('Tarde','Marcio Vinicius Campos Souza','18','50','9'),
('Tarde','MARLON ISMIRRAY DE AMORIM SILVA','21','22','33'),('Manhã','Harrison Souza de Oliveira Santos','23','26','6'),
('Manhã','Samara Thacila Santana de Barros','22','27','29'),('Tarde','Adelson thalys ribeiro da Silva','18','1','8'),
('Manhã','Gabriel Henrique Da Silva Oliveira','18','45','14'),('Tarde','Tainá Larissa Gomes Do Nascimento','17','46','29'),
('Tarde','Kawã Ricardo Bazante do Nascimento da Silva','18','37','3'),('Manhã','Diogo Vinicius Sabino de Melo','20','37','16'),
('Tarde','Renata Oliveira da Silva','21','37','33'),('Manhã','Igor Leandro da Silva Oliveira','18','38','26'),
('Tarde','Átala Mellina da Silva Trindade','23','39','26'),('Tarde','Dyogenes moraes da silva','21','48','10'),
('Tarde','Nicole Augusta Rodrigues de Souza','17','31','22'),('Tarde','Giseli Lima de Oliveira','18','32','19'),
('Tarde','Julia Auristela Gomes Correia','18','33','21'),('Tarde','Julia Auristela Gomes Correia','18','33','21'),
('Tarde','Yasmin Vitória dos Santos Silva','20','34','13'),('Tarde','Arthur Henrique Silveira de Paula','18','35','4'),
('Manhã','Caio de Sousa Alves','24','36','18'),('Manhã','Jamii Alessandra da Silva Barros','18','42','22'),
('Tarde','João Vitor Soares','18','42','20'),('Manhã','Ingrid Myllena Nonato de Lima','19','43','33'),
('Tarde','Matheus Felipe da Silva','23','40','28'),('Tarde','Alyson Lincon Freitas De Lima','18','44','24'),
('Manhã','Dayvid Cristiano Viana da Silva','20','41','17'),('Tarde','Tiago Pereira Gomes','19','49','33'),
('Tarde','JOELMA FERREIRA DA SILVA','22','47','33'),('Manhã','Eli Vinicius de Andrade Silva','19','47','30'),
('Tarde','Adriana Vitória Alves dos Santos','20','47','4');

-- (AVG, MIN, COUNT, SUM, MAX)


select * from aluno where cod_endereco = (select codigo from endereco where bairro = 'Torrões');
Select * from endereco;
select * from endereco where (bairro) = 'Nova Descoberta';
select * from aluno where (cod_endereco) = '37';

select count(bairro) from endereco;

select distinct cidade from endereco;
select (count(distinct cidade)) from endereco;


select cidade, count(bairro) from endereco group by cidade order by count(bairro) desc;
select * from aluno;
select idade, count(*) from aluno group by idade order by idade;
select * from curso;
select instituicao,campus, count(*) from curso group by instituicao,campus order by instituicao desc;

select nome, bairro from aluno,endereco where codigo=cod_endereco order by nome;

select aluno.nome,instituicao,cidade from aluno,curso,endereco where id_curso=id and codigo=cod_endereco and cidade='Recife' and instituicao='ETE';


select aluno.nome,bairro from aluno JOIN endereco on cod_endereco=codigo;

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
select * from curso;
select * from aluno;
select * from endereco;
-- 1
select aluno.nome,instituicao from aluno,curso where id_curso=id order by instituicao,nome;
-- 2
select count(aluno.nome) from aluno,curso where id_curso=id and curso.nome LIKE '%Seguranca do Trabalho%';
-- 3
select count(aluno.nome), curso.nome, avg(idade) from aluno,curso where id_curso=id group by curso.nome;
select count(*), avg(idade) from aluno,curso where id_curso=id;
-- 4
select aluno.nome,instituicao,cidade from aluno,curso,endereco where id_curso=id and codigo=cod_endereco and cidade='Recife' and instituicao='ETE';
-- 5
select aluno.nome,bairro,campus from aluno,curso,endereco where id_curso=id and codigo=cod_endereco and campus='Recife';

insert into  endereco (bairro, cidade) values ('Piedade', 'Jaboatão dos Guararapes');

select bairro, count(aluno) from aluno,endereco where codigo=cod_endereco;

select aluno.nome,curso.nome,campus,cidade from aluno,curso,endereco where id_curso=id and codigo=cod_endereco order by cidade,aluno.nome;

-- 6
select count(bairro) from endereco right join endereco on cod_endereco=codigo;

select count(nome),bairro from aluno right JOIN endereco on cod_endereco=codigo group by bairro;
