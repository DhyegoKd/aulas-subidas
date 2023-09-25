use dhyego;
create table curso(
Codigo integer not null primary key,
Nome varchar(50) not null,
Sigla varchar(50) not null,
data_inicio date null,
CH integer null);
insert into curso values(
145, 'segurança do trabalho','tst', '2015-12-02',1540);
insert into curso values(
478, 'Redes de Computadores','RDC', '2020-04-23',2010);
insert into curso values(
963, 'Informática para internet','IPI',null ,1540);
insert into curso values(
147, 'Análise e Desenvolvimento de sistemas','ADS', '2017-09-14',null);
insert into curso values(
256, 'Odontologia','ODO', '2010-04-20',1400);

select * from curso;

delete from curso where CH > 2000;
delete from curso where data_inicio='2020-12-02';
UPDATE curso
set CH = 3000
where sigla='ADS';

UPDATE curso
set sigla = 'STB'
where sigla = 'tst';

delete * from curso 
where CH> 1000 and codigo>200;
