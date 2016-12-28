-- 1-) Doktor tablosunda en yüksek ve en düşük maaş arasındaki farkı bulan fankşin  -> Buton ile calıstıracagiz
CREATE OR REPLACE FUNCTION odev4fonk1 () returns real AS '
DECLARE
	fark_maas real;
	max_maas Doktor.dr_salary%TYPE;
	min_maas Doktor.dr_salary%TYPE;
BEGIN
					SELECT MIN(dr_salary) INTO min_maas FROM Doktor;
					SELECT MAX(dr_salary) INTO max_maas FROM Doktor;
					fark_maas := max_maas - min_maas;
					RETURN fark_maas;
END;
' LANGUAGE 'plpgsql';

SELECT odev4fonk1();

-- 2-)Hangi doktorun hic hastasi yoktur. -> Buton ile calistiracagiz.


CREATE OR REPLACE FUNCTION odev4fonk3 () returns Doktor.dr_ad%TYPE AS '
DECLARE
	isim Doktor.dr_ad%TYPE;
BEGIN
					SELECT d.dr_ad INTO isim FROM Doktor AS d WHERE NOT EXISTS (SELECT * FROM Hasta AS h WHERE h.dr_no=d.dr_no);
					RETURN isim;
END;
' LANGUAGE 'plpgsql';

SELECT odev4fonk3();

-- 3-)adı girilen doktorun hasta sayısını bulan fonsiyon -> Guı den parametre alıcaz.

CREATE OR REPLACE FUNCTION odev4fonk2 (drad Doktor.dr_ad%TYPE) returns int AS '
DECLARE
	adet int;
BEGIN
					SELECT COUNT(*) INTO adet FROM Doktor d, Hasta h WHERE d.dr_no=h.dr_no AND d.dr_ad=drad;
					RETURN adet;
END;
' LANGUAGE 'plpgsql';

SELECT odev4fonk2('Yasin');

