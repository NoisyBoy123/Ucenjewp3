use master;
go
drop database if exists tvrtka;
go
create database tvrtka;
go
use tvrtka;

create table zaposlenici(
sifra			int			not null	primary key identity (1,1),
ime				varchar(50)	not null,
prezime			varchar(50)	not null,
datum_rodenja	date,
placa			decimal,
invalid			bit
);

create table slike(
sifra			int			not null	primary key identity (1,1),
zaposlenik		int			not null,
redni_broj		char,
putanja			varchar(50)
);


alter table slike add foreign key (zaposlenik) references zaposlenici(sifra);


select * from zaposlenici

insert into zaposlenici (ime,prezime,datum_rodenja,placa,invalid) values
--1
('Slaven','Poznic','1999-05-08 7:00:00',1500.00,0),
--2
('Natasa','Poznic','1977-03-24 8:00:00',1600.00,0),
--3
('Dora','Devic','1995-09-12 9:00:00',1700.00,1);


select * from slike

insert into slike (zaposlenik,redni_broj,putanja) values
(1,1,'rrrrrr'),
(1,2,'tttttt'),
(2,1,'zzzzzz'),
(2,2,'yyyyyy'),
(3,1,'iiiiii'),
(3,2,'kkkkkk');

