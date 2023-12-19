use master;
go
drop database if exists tvrtka;
go
create database tvrtka;
go
use tvrtka;

create table zaposlenici(
sifra	int	not null	primary key identity (1,1),
ime		varchar(50)	not null,
prezime	varchar(50)	not null,
datum_rodenja	date,
placa	decimal,
invalid	bit
);

create table slike(
sifra	int	not null	primary key identity (1,1),
zaposlenik	int	not null,
redni_broj	char,
putanja	varchar(50)
);

alter table slike add foreign key (zaposlenik) references zaposlenici(sifra);


select * from zaposlenici;

insert into zaposlenici(ime, prezime, datum_rodenja,placa,invalid) values
--1
('Slaven','Poznic','1999-05-08 07:00:00',1500.00,0),
--2
('Dora', 'Devic','1995-09-12 8:00:00', 1200.00,1),
--3
('Natasa','Poznic','1977-04-23 06:00:00',1500.00,0);


select * from slike;

insert into slike(zaposlenik, redni_broj, putanja) values
(1,1,'tttttt'),
(1,2,'zzzzzz'),
(2,1,'xxxxxx'),
(2,2,'yyyyyy'),
(3,1,'rrrrrr'),
(3,2,'pppppp');





