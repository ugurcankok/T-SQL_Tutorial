use SqlDersleri

--select * from [dbo.Siparis]
--select * from [dbo.Urun]

select k.KullaniciGercekAdi,k.KullaniciSoyadý,ur.UrunAdi,ur.UrunNo from [dbo.Kullanici] k 
left join [dbo.Siparis] sp on sp.KullaniciNo=k.KullanýcýNo
left join [dbo.Urun] ur on ur.UrunNo=sp.UrunNo