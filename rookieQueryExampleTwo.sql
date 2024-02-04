--sipari� ad�nda bir veritaban� olu�turdu
create database siparis_takip
--sorgu k�sm�n� sipari� veritaban�na ald�
use siparis_takip
--sorular ad�nda tablo olu�turduk
CREATE TABLE [sorular](
--pr�mary key i�in kolon olu�turur
	[id] [int] IDENTITY(1,1) NOT NULL,-- (bo� olmiycak)
	[soru] [nvarchar](150) NULL,--(bo� olabilir)
	--ayn� verileri birbirinden ay�rmak i�in kullan�l�r
 CONSTRAINT [PK_problem] PRIMARY KEY CLUSTERED 
(
--asc artan �ekilde desc azalan �ekilde
	[id] ASC --DESC
))
GO

use siparis_takip
--veri eklemek i�in kullan�l�r
insert [sorular] ([soru],[cevap]) values ('222','reslt')
--verileri g�ncellemek i�in kullan�l�r.where kolonda belirtti�imiz k�sm� de�i�tirir
update [sorular] set [soru]='333',[cevap]='asdf' where id=5
--verileri silmek i�in kullan�l�r.where kolonda belirtti�imiz k�sm� siler
delete from [sorular]  where [cevap]='asdf'

--tabloya yeni kolon ekleme
alter table [sorular]
add cevap nvarchar(150) ;

--tablodaki kolonu g�ncelleme
alter table sorular
alter column cevap nvarchar(250) not null ; 

--tablodaki belirtilen kolonu silme 
alter table sorular 
drop column cevap

--se�ilen tabloyu siler
drop table sorular

--�nce master databesini a�ar sonra veritaban�n� kilitleyip silmek i�in kullan�l�r
use [master]
go
ALTER DATABASE siparis_takip SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
drop database siparis_takip