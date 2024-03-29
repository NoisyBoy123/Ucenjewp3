﻿use master
go
drop database if exists studio_ilustris_zavrsni;
go
create database studio_ilustris_zavrsni;
go
use studio_ilustris_zavrsni;

create table djelatnici(
sifra		int			not null	primary key identity (1,1),
ime			varchar(50)	not null,
prezime		varchar(50)	not null
);

create table korisnici(
sifra		int			not null	primary key identity (1,1),
ime			varchar(50)	not null,
prezime		varchar(50)	not null,
email		varchar(50) not null,
djelatnik	int
);


create table posjeta(
korisnik	int,
datum		date,
usluga		int
);


create table usluge(
sifra		int			not null	primary key identity (1,1),
naziv		varchar(50)	not null,
tip			varchar(50) not null
);


alter table korisnici add foreign key (djelatnik) references djelatnici;
alter table posjeta add foreign key (korisnik) references korisnici;
alter table posjeta add foreign key (usluga) references usluge;


select * from djelatnici

insert into djelatnici (ime,prezime) values
--1
('Dora','Dević'),
--2
('Katarina','Kovacić');


select * from korisnici

insert into korisnici(ime,prezime,email) values
--1
('Ana','Anić','aanic@gmail.com'),
--2
('Iva','Ivić','iivic@gmail.com'),
--3
('Matea','Matić','mmatic@gmail.com'),
--4
('Katarina','Katić','kkatic@gmail.com'),
--5
('Josipa','Josić','jjosic@gmail.com'),
--6
('Petra','Petrić','ppetric@gmail.com'),
--7
('Maja','Majić','mmajic@gmail.com'),
--8
('Tina','Tinić','ttinic@gmail.com'),
--9
('Ema','Emić','eemic@gmail.com'),
--10
('Ena','Enić','eenic@gmail.com');






select * from usluge

insert into usluge(naziv,tip) values
--1
('Gel','Ugradnja'),
--2
('Gel','Nadopuna'),
--3
('Trajni lak','Ugradnja'),
--4
('Trajni lak','Nadopuna');



