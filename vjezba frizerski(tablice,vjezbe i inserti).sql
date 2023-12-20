use master
go
drop database if exists frizerski_salon;
go
create database frizerski_salon;
go
use frizerski_salon;

create table djelatnici(
sifra		int			not null	primary key identity (1,1),
ime			varchar(50)	not null,
prezime		varchar(50)	not null,
oib			char(11)	not null,
iban		varchar(50)
);

create table korisnici(
sifra		int			not null	primary key identity (1,1),
ime			varchar(50)	not null,
prezime		varchar(50)	not null,
email		varchar(50),
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
tip			varchar(50)
);


alter table korisnici add foreign key (djelatnik) references djelatnici;
alter table posjeta add foreign key (korisnik) references korisnici;
alter table posjeta add foreign key (usluga) references usluge;


select * from djelatnici

insert into djelatnici (ime,prezime,oib) values
--1
('Slaven','Poznic',12345678911);
--2
