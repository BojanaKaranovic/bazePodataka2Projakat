select proizvod.nazivpro, nudi.cena, sum(nudi.cena*stavka.kolicina) as Ukupna_Cena, sum(kolicina) as ukupno_Prodato_Artikala
from proizvod 
inner join nudi on proizvod.idpro = nudi.proizvod_idpro 
inner join stavka on nudi.nudi_id= stavka.nudi_nudi_id 
where nudi.cena * stavka.kolicina > 4000
group by proizvod.nazivpro, nudi.cena
order by proizvod.nazivpro desc, nudi.cena desc , ukupno_prodato_artikala desc;