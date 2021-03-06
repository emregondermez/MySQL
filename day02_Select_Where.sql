

/*=====================================
			SELECT-WHERE
=======================================*/
create table ogrenciler(
id int,
isim varchar(45),
adres varchar(100),
sinavNotu int
);

insert into ogrenciler values(101,'Emre G','adana',95);
insert into ogrenciler values(102,'Gokhan','mersin',55);
insert into ogrenciler values(103,'mert','tokat',92);
insert into ogrenciler values(104,'Anil','Ankara',100);
insert into ogrenciler values(124,'Mehmet','Adiyaman',87);

select * from ogrenciler;
/*============================================================================
   Verileri SELECT komutu ile veritabanından çekerken filtreleme yapmak için
   Syntax
   --------
    SELECT ile birlikte WHERE komutu kullanılabilir.
    SELECT sutün1, sutün2
        ...
    FROM  tablo_adı WHERE koşul;
==============================================================================*/

/*-----------------------------------------------------------------------------
  ORNEK1: Sınav notu 80'den büyük olan öğrencilerin tüm bilgilerini listele
 -----------------------------------------------------------------------------*/

 select * from ogrenciler 
 where sinavNotu >80 ;
 
 /*-----------------------------------------------------------------------------
 ORNEK2: Adresi Ankara olan öğrencilerin isim ve adres bilgilerini listele
 -----------------------------------------------------------------------------*/
 
 select isim,adres from ogrenciler
 where adres ='Ankara';
 
 

 
 /*-----------------------------------------------------------------------------
 ORNEK3: id'si 124 olan ogrencilerin tum bilgilerini getirin
 -----------------------------------------------------------------------------*/
 
 select * from ogrenciler
 where id =124;

 
 /*-----------------------------------------------------------------------------
				select- Between
-------------------------------------------------------------------------------*/
    CREATE TABLE personel
    (   
        id CHAR(5),
        isim VARCHAR(50),
        maas int
    );
    
    
    INSERT INTO personel VALUES('10001', 'Ahmet Aslan', 7000);
    INSERT INTO personel VALUES('10002', 'Mehmet Yılmaz' ,12000);
    INSERT INTO personel VALUES('10003', 'Meryem ', 7215);
    INSERT INTO personel VALUES('10004', 'Veli Han', 5000);
    INSERT INTO personel VALUES('10005', 'Mustafa Ali', 5500);
    INSERT INTO personel VALUES('10005', 'Ayşe Can', 4000);
    INSERT INTO personel VALUES('10006', 'Yasemin', 4000);


-- not: BETWEEN iki mantiksal ifade ile tanimlayabileceğimiz durumlari 
-- tek komutla yazabilme imkani verir.alter
-- yazdiğimiz 2 sinir da araliğa dahildir


/*===========================================================================
 ===  And (Ve) Operatörü Kullanımı
And ile belirtilen şartların tamamı gerçekleşiyorsa o kayıt listelenir, şartlardan
bir tanesi bile tutmazsa listelenmez.
SELECT * FROM matematik WHERE sinav1 < 50 AND sinav2 < 50
Bu örnekte hem sınav1 hem de sınav2 alanı 50'den küçük olan kayıtlar listelenecektir.
=====Or (Veya) Operatörü Kullanımı=====
Or ile belirtilen şartlardan en az biri gerçekleşiyorsa o kayıt listelenir,
şartlardan hiçbiri gerçekleşmiyorsa o kayıt listelenmez.
SELECT * FROM matematik WHERE sinav1 < 50 OR sinav2 < 50
Bu örnekte sınav1 veya sınav2 alanı 50'den küçük olan kayıtlar listelenecektir. */
 
 /* -----------------------------------------------------------------------------
  ORNEK4: id'si 10002 ile 10005 arasında olan personelin bilgilerini listele
 -----------------------------------------------------------------------------*/



select * from personel 
where id between 10002 and 10005;


 
  /* -----------------------------------------------------------------------------
  ORNEK5: ismi Mehmet Yılmaz ile Veli Han arasındaki olan personel bilgilerini 
  listeleyiniz. personelin bilgilerini listele
 -----------------------------------------------------------------------------*/  
 
 select * from personel
 where isim between 'Mehmet Yilmaz' and 'Veli Han';
 
 
/* ======================= SELECT - IN ======================================
    IN birden fazla mantıksal ifade ile tanımlayabileceğimiz durumları 
    tek komutla yazabilme imkânı verir
    SYNTAX:
    -------
    SELECT sutun1,sutun2, ...
    FROM tablo_adı
    WHERE sutun_adı IN (deger1, deger2, ...);
/* ========================================================================== */
    
/* -----------------------------------------------------------------------------
  ORNEK7: id’si 10001,10002 ve 10004 olan personelin bilgilerini listele
 -----------------------------------------------------------------------------*/  

 select * from personel
 where id='10001'or id='10002' or id='10004';
 
 select * from personel
 where id in (10001,10002,10004);
 
 
 
 
 /* -----------------------------------------------------------------------------
  ORNEK8: Maaşı sadece 7000  veya 12000 olan personelin bilgilerini listele
-----------------------------------------------------------------------------*/   
select * from personel
where maas in (7000,12000);

 
 /* ======================= SELECT - LIKE ======================================
    NOT:LIKE anahtar kelimesi, sorgulama yaparken belirli patternleri 
    kullanabilmemize olanak sağlar.
    SYNTAX:
    -------
    SELECT sutün1, sutün2,…
    FROM  tablo_adı WHERE sütunN LIKE pattern
    
    PATTERN İÇİN
    -------------
    %    ---> 0 veya daha fazla karakteri belirtir. 
    _    ---> Tek bir karakteri temsil eder.
        
/* ========================================================================== */

-- Ornek 9 : ismi A ile baslayan listeleyin
select * from personel
where isim like 'a%';


-- Ornek 10 : ismi n harfi ile bitenleri listeleyiniz


select * from personel
where isim like '%n';


-- ikinci harfleri e olanlari listele


select * from personel
where isim like '_e%';

/* -----------------------------------------------------------------------------
  ORNEK12:  isminin 2. harfi e olup diğer harflerinde y olanları listeleyiniz
 -----------------------------------------------------------------------------*/
select * from personel
where isim like '_e%y%' or isim  like 'y%';


-- isminde a harfi olmayanlari listeleyiniz


 select * from personel
where isim not like '%a%';

--  ORNEK: maaşı 5 haneli olanları listeleyiniz



select * from personel
where maas like '_____';

-- 1. harfi A 7. harfi A olan personeli listele


select * from personel
where isim like 'a_____a%';


 
 
 