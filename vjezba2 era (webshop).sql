use master;
go
drop database if exists webshop;
go
create database webshop;
go
use webshop;

create table proizvodi(
sifra			int			not null	primary key identity (1,1),
naziv			varchar(50)	not	null,
datum_nabave	date,
cijena			decimal		not	null,
aktivan			bit			not null
);

create table racuni(
sifra		int		not	null	primary key identity (1,1),
datum		date	not null,
kupac		int		not null,
statuss		bit
);

create table kupci(
sifra		int				not null	primary key identity(1,1),
ime			varchar(50)		not null,
prezime		varchar(50)		not null,
ulica		varchar(100)	not null,
mjesto		varchar(50)		not null
);

create table stavke(
racun		int		not null,
proizvod	int		not null,
kolicina	int		not null,
cijena		decimal	not null
);


alter table stavke add foreign key (proizvod) references proizvodi(sifra);
alter table stavke add foreign key (racun) references racuni(sifra);
alter table racuni add foreign key (kupac) references kupci(sifra);


select * from proizvodi;

insert into proizvodi (naziv,cijena,aktivan) values
--proizvod 1
('Vitamin C1000 200tab',20.00,1),
--proizvod 2
('Vitamin D3 5000UI 360caps',25.00,1),
--proizvod 3
('NAC 120caps',25.00,0);


select * from racuni;

insert into racuni (datum,kupac) values
--racun 1
('2023-08-05','Slaven Poznic'),
--racun 2
('2023-06-08','Dora Devic'),
--racun 3
('2023-09-12','Natasa Poznic');

