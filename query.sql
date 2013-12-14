create table account(
	usernum number(10) primary key,
	userid varchar2(20),
	userpwd varchar2(20),
	regdate timestamp,
	userout varchar2(5)
);

create table info(
	usernum number(10) primary key,
	username varchar2(20),
	usertel varchar2(30),
	useraddr varchar2(50),
	useremail varchar2(30),
	admin varchar2(5)
);

create table reservation(
	resnum number(10) primary key,
	roomnum number(10),
	ressum number(20),
	resdate date,
	restime timestamp,
	username varchar2(20),
	usernum number(10)
);

create table room(
	roomnum number(10) primary key,
	roomtitle varchar2(20),
	roomprice number(20),
	color varchar2(10)
);

create table board(
	boanum number(10) primary key,
	boatitle varchar2(50),
	boacontent varchar2(1000),
	boadate timestamp,
	boahit number(10)
);

create table qaboard(
	qaboanum number(10) primary key,
	qaboatitle varchar2(50),
	qaboacontent varchar2(1000),
	qaboahit number(10),
	qaboadate timestamp,
	usernum number(10),
	username varchar2(20),
	userpwd varchar2(20)
);

create table reply(
	repnum number(10) primary key,
	qaboanum number(10),
	repcontent varchar2(1000),
	usernum number(10)
);

create sequence boa_seq;
create sequence qaboa_seq;
create sequence res_seq;
create sequence rep_seq;