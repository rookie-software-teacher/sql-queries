use musteri_takips

--select kolonadý1,kolonadý3,kolonadý6 from tabloAdý 
--select * from tabloAdý
select * from urunler where kategoriNo=2

--satýslar tablosun da müþterino 2'denbüyük olanlarý listele 
select * from satýslar where musteriNo>2


--müþterietaylarý tablosundan müþteriNo kýsmý 2 olan müþterinin aldýðý satýþlarý listele 
select * from satýslar where musteriNo=(select musteriNo from musteriDetaylari where musteriNo=2 )


--kategori Adý Bilgisayar olan satýþlarý listele
select * from satýslar where urunNo in(
	select urunNo from urunler where kategoriNo=(
		select kategoriNo from kategoriler where kategoriAdý='bilgisayar'
	)
)
insert musteriler(Ad,Soyad,borç) values ('can','kayan',123)
insert satýslar(adet,musteriNo,satýlanFiyat,urunNo,tarih) values (1,8,8000,7,'2024-05-15')
select * from urunler
--Adý ceren olan müþterler verdiði sipariþleri listele
select * from satýslar where musteriNo in (
	select musteriNo from musteriler where Ad='ceren'
)
--fiyatý 5000'den büyük olan ürünleri listele
select * from urunler where fiyat>5000
--adeti 2 den büyük ve fiyatý 15000'i geçen sipariþleri listele
select * from urunler where adet>2 and fiyat>15000
--adeti 2 den büyük veya fiyatý 15000'i geçen sipariþleri listele
select * from urunler where adet>2 or fiyat>15000
--sipariþ vermeyen müþteri listele
select * from musteriler where musteriNo not in (select musteriNo from satýslar)

select musteriler.musteriNo as [musteri no],satýslar.musteriNo as satýslar,Ad,adet,tarih from musteriler inner join satýslar on musteriler.musteriNo = satýslar.musteriNo
