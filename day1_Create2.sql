/*=====================================
		TABLO OLUSTURMA (CRUD-create)
=======================================*/
use sys;
create table student
( id varchar(4),
name varchar(25),
age int

);
insert into student values('1001','Mehmet ali',34);
insert into student values('1002','ali can',46);
insert into student values('1003','emre',23);
insert into student values('1004','ipek',32);

/*=====================================
		PARCALI VERI GIRISI
=======================================*/
insert into student(name, age) values('Samet Ay',12);

/*=====================================
		TABLODAN VERI SORGULAMA
=======================================*/

select * from student;
/*=====================================
		TABLO SILME
=======================================*/

drop table urunler








