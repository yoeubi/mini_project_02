create table tb_location( 
location_code varchar2(30) primary key,
location_name varchar2(30));

create table tb_branch (
location_code varchar2(30),
branch_code varchar2(30),
branch_name varchar2(30),
primary key (location_code,branch_code)); 

create table tb_screening(
branch_code varchar2(30),
screening_code varchar2(30),
screening_date varchar2(30),
primary key(branch_code, screening_code));

create table tb_film(
screening_code varchar2(30),
film_code varchar2(30),
film_name varchar2(200),
primary key(screening_code , film_code)
);

create table tb_theater(
film_code varchar2(30),
theater_code varchar2(30),
theater_name varchar2(30),
theater_total_seat varchar2(30),
theater_sold_seat varchar2(2000),
primary key(film_code , theater_code));

create table tb_showtimes(
theater_code varchar2(30),
show_code varchar2(30),
show_time varchar2(2000),
primary key(theater_code,show_code));

drop table tb_location;
drop table tb_branch;
drop table tb_screening;
drop table tb_film;
drop table tb_theater; 
drop table tb_showtimes;

insert into tb_location (location_code, location_name) values ('Lo1','서울');
insert into tb_location (location_code, location_name) values ('Lo2','경기');
insert into tb_location (location_code, location_name) values ('Lo3','인천');
insert into tb_location (location_code, location_name) values ('Lo4','강원');
insert into tb_location (location_code, location_name) values ('Lo5','대전/충청');
insert into tb_location (location_code, location_name) values ('Lo6','대구');
insert into tb_location (location_code, location_name) values ('Lo7','부산/울산');
insert into tb_location (location_code, location_name) values ('Lo8','경상');
insert into tb_location (location_code, location_name) values ('Lo9','광주/전라/제주');

select * from tb_location;


insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br1','강남');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br2','강동');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br3','강변');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br4','건대입구');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br5','구로');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br6','군자');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br7','대학로');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br8','동대문');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br9','명동');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo1','Lo1-br10','목동');

insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br1','경기광주');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br2','광명철산');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br3','구리');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br4','김포');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br5','김포운양');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br6','김포풍무');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br7','동백');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br8','동수원');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br9','동탄');
insert into tb_branch (location_code , branch_code,branch_name) values ('Lo2','Lo2-br10','동탄역');
commit;
select *
from tb_branch
where location_code = 1;


insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc1','04/29');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc2','04/30');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc3','05/01');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc4','05/02');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc5','05/03');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc6','05/04');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc7','05/05');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc8','05/06');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc9','05/07');
insert into tb_screening(branch_code , screening_code , screening_date ) values ('Lo1-br1','Lo1-br1-sc10','05/08');

select *
from tb_screening

insert into tb_film(screening_code,film_code,film_name) values ('Lo1-br1-sc1','Lo1-br1-sc1-fi1','어벤져스 인피니티:워');
insert into tb_film(screening_code,film_code,film_name) values ('Lo1-br1-sc1','Lo1-br1-sc1-fi2','챔피언');
insert into tb_film(screening_code,film_code,film_name) values ('Lo1-br1-sc1','Lo1-br1-sc1-fi3','콰이어트 플레이스');

select * from tb_film;

insert into tb_theater(film_code,theater_code,theater_name,theater_total_seat) values ('Lo1-br1-sc1-fi1','Lo1-br1-sc1-fi1-th1','1관 6층','158');
insert into tb_theater(film_code,theater_code,theater_name,theater_total_seat) values ('Lo1-br1-sc1-fi1','Lo1-br1-sc1-fi1-th2','2관 6층','124');
insert into tb_theater(film_code,theater_code,theater_name,theater_total_seat) values ('Lo1-br1-sc1-fi1','Lo1-br1-sc1-fi1-th3','3관 8층','172');
insert into tb_theater(film_code,theater_code,theater_name,theater_total_seat) values ('Lo1-br1-sc1-fi1','Lo1-br1-sc1-fi1-th4','4관 8층','124');
insert into tb_theater(film_code,theater_code,theater_name,theater_total_seat) values ('Lo1-br1-sc1-fi1','Lo1-br1-sc1-fi1-th5','5관 10층','172');


insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th1','Lo1-br1-sc1-fi1-th1-sh1','08:15');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th1','Lo1-br1-sc1-fi1-th1-sh2','11:15');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th1','Lo1-br1-sc1-fi1-th1-sh3','14:15');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th1','Lo1-br1-sc1-fi1-th1-sh4','17:15');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th1','Lo1-br1-sc1-fi1-th1-sh5','20:15');

insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th2','Lo1-br1-sc1-fi1-th2-sh1','07:05');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th2','Lo1-br1-sc1-fi1-th2-sh2','10:05');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th2','Lo1-br1-sc1-fi1-th2-sh3','13:05');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th2','Lo1-br1-sc1-fi1-th2-sh4','16:05');
insert into tb_showtimes(theater_code,show_code,show_time) values ('Lo1-br1-sc1-fi1-th2','Lo1-br1-sc1-fi1-th2-sh5','19:05');

select *
from tb_showtimes;


select *
from tb_theater th
inner join tb_showtimes sh
on th.theater_code = sh.theater_code;


select fi.THEATER_NAME
from tb_location lo
inner join tb_branch br
on lo.location_code = br.location_code
inner join tb_days da
on br.branch_code = da.branch_code
inner join tb_theater th
on th.showing_code = da.showing_code
inner join tb_film fi
on th.film_code = fi.film_code
inner join tb_times ti
on ti.theater_code = fi.theater_code
where th.film_name = '어벤저스'; 





