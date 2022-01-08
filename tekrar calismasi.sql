-- Tablo olusturma 

use sys;
create table urunler(

	tedarikci_id int primary key,
	urun_ad varchar(23),
	urun_fiyat int  
);

insert into urunler values(101,'muz',13); -- --> Tabloya veri girisi
insert into urunler values(102,'elma','12');



drop table urunler;  
 
 
 
 create table tedarikci(
tedarikci_id int,
tedarikci_ad varchar(25),
tedarikci_sehir varchar(18),
constraint urunler_pk foreign key (tedarikci_id) references urunler(tedarikci_id) on delete cascade
);


insert into tedarikci values(101,'muzcu','anamur');
insert into tedarikci values(102,'elmaci','nevsehir');
 drop table tedarikci;  

delete from urunler 
where tedarikci_id=101;

select * from urunler;
select * from tedarikci;
drop table urunler;
drop table tedarikci;
