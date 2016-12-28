-- 1-) Doktor tablosunda en yüksek ve en düşük maaş arasındaki farkı bulan fankşin  -> Buton ile calıstıracagiz
CREATE OR REPLACE FUNCTION odev4fonk1 () returns real AS $$
DECLARE
	fark_maas real;
	max_maas Doctor.dr_salary%TYPE;
	min_maas Doctor.dr_salary%TYPE;
BEGIN
					SELECT MIN(dr_salary) INTO min_maas FROM Doktor;
					SELECT MAX(dr_salary) INTO max_maas FROM Doktor;
					fark_maas := max_maas - min_maas;
					RETURN fark_maas;
END;
$$ LANGUAGE 'plpgsql';

-- SELECT odev4fonk1();

-- 2-)Hangi doktorun hic hastasi yoktur. -> Buton ile calistiracagiz.


CREATE OR REPLACE FUNCTION odev4fonk3 () returns Doctor.dr_ad%TYPE AS $$
DECLARE
	isim Doctor.dr_ad%TYPE;
BEGIN
					SELECT d.dr_name INTO isim FROM Doctor AS d WHERE NOT EXISTS (SELECT * FROM Patinent AS p WHERE p.dr_no = d.dr_no);
					RETURN isim;
END;
$$ LANGUAGE 'plpgsql';

-- SELECT odev4fonk3();

-- 3-)adı girilen doktorun hasta sayısını bulan fonsiyon -> Guı den parametre alıcaz.

CREATE OR REPLACE FUNCTION odev4fonk2 (drad Doctor.dr_name%TYPE) returns int AS $$
DECLARE
	adet int;
BEGIN
					SELECT COUNT(*) INTO adet FROM Doctor d, Patient p WHERE d.dr_no = p.dr_no AND d.dr_ad = drad;
					RETURN adet;
END;
$$ LANGUAGE 'plpgsql';

-- SELECT odev4fonk2('Yasin');

