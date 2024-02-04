--sipariþ adýnda bir veritabaný oluþturdu
create database siparis_takip
--sorgu kýsmýný sipariþ veritabanýna aldý
use siparis_takip
--sorular adýnda tablo oluþturduk
CREATE TABLE [sorular](
--prýmary key için kolon oluþturur
	[id] [int] IDENTITY(1,1) NOT NULL,-- (boþ olmiycak)
	[soru] [nvarchar](150) NULL,--(boþ olabilir)
	--ayný verileri birbirinden ayýrmak için kullanýlýr
 CONSTRAINT [PK_problem] PRIMARY KEY CLUSTERED 
(
--asc artan þekilde desc azalan þekilde
	[id] ASC --DESC
))
GO

use siparis_takip
--veri eklemek için kullanýlýr
insert [sorular] ([soru],[cevap]) values ('222','reslt')
--verileri güncellemek için kullanýlýr.where kolonda belirttiðimiz kýsmý deðiþtirir
update [sorular] set [soru]='333',[cevap]='asdf' where id=5
--verileri silmek için kullanýlýr.where kolonda belirttiðimiz kýsmý siler
delete from [sorular]  where [cevap]='asdf'

--tabloya yeni kolon ekleme
alter table [sorular]
add cevap nvarchar(150) ;

--tablodaki kolonu güncelleme
alter table sorular
alter column cevap nvarchar(250) not null ; 

--tablodaki belirtilen kolonu silme 
alter table sorular 
drop column cevap

--seçilen tabloyu siler
drop table sorular

--önce master databesini açar sonra veritabanýný kilitleyip silmek için kullanýlýr
use [master]
go
ALTER DATABASE siparis_takip SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
drop database siparis_takip