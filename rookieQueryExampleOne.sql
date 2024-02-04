use musteri_takips

--select kolonad�1,kolonad�3,kolonad�6 from tabloAd� 
--select * from tabloAd�
select * from urunler where kategoriNo=2

--sat�slar tablosun da m��terino 2'denb�y�k olanlar� listele 
select * from sat�slar where musteriNo>2


--m��terietaylar� tablosundan m��teriNo k�sm� 2 olan m��terinin ald��� sat��lar� listele 
select * from sat�slar where musteriNo=(select musteriNo from musteriDetaylari where musteriNo=2 )


--kategori Ad� Bilgisayar olan sat��lar� listele
select * from sat�slar where urunNo in(
	select urunNo from urunler where kategoriNo=(
		select kategoriNo from kategoriler where kategoriAd�='bilgisayar'
	)
)
insert musteriler(Ad,Soyad,bor�) values ('can','kayan',123)
insert sat�slar(adet,musteriNo,sat�lanFiyat,urunNo,tarih) values (1,8,8000,7,'2024-05-15')
select * from urunler
--Ad� ceren olan m��terler verdi�i sipari�leri listele
select * from sat�slar where musteriNo in (
	select musteriNo from musteriler where Ad='ceren'
)
--fiyat� 5000'den b�y�k olan �r�nleri listele
select * from urunler where fiyat>5000
--adeti 2 den b�y�k ve fiyat� 15000'i ge�en sipari�leri listele
select * from urunler where adet>2 and fiyat>15000
--adeti 2 den b�y�k veya fiyat� 15000'i ge�en sipari�leri listele
select * from urunler where adet>2 or fiyat>15000
--sipari� vermeyen m��teri listele
select * from musteriler where musteriNo not in (select musteriNo from sat�slar)

select musteriler.musteriNo as [musteri no],sat�slar.musteriNo as sat�slar,Ad,adet,tarih from musteriler inner join sat�slar on musteriler.musteriNo = sat�slar.musteriNo
