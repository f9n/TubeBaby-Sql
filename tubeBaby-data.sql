--              hospital_no, hospital_name, hospital_addres, hospital_telephone
INSERT INTO Hospital VALUES ('01', 'Yeni Hayat','Esenler Istanbul','02124547213');
INSERT INTO Hospital VALUES ('02', 'Eski Hayat', 'Davutpasa Istanbul', '02123454444');
INSERT INTO Hospital VALUES ('03', 'Gelecek Hayat', 'Sisle Istanbul', '02122221111');
--              dr_name, dr_lname, dr_no, dr_salary, hospital_no, dr_cell_telephone
INSERT INTO Doctor VALUES ('Yılmaz','Çöllü' ,'01', 1000	, '01','05326783451');
INSERT INTO Doctor VALUES ('Ahnet' ,'Ağar'  ,'02', 2500	, '01','05348239129');
INSERT INTO Doctor VALUES ('Sait'  ,'Akın'  ,'03', 5000	, '01','05439123884');
INSERT INTO Doctor VALUES ('Zafer' ,'Çolak' ,'04', 10000, '01','05024914812');
INSERT INTO Doctor VALUES ('Yasin' ,'Dilber','05', 6350	, '02','05326783451');
INSERT INTO Doctor VALUES ('Yasin' ,'Ozdur' ,'06', 12060, '02','05555522333');
INSERT INTO Doctor VALUES ('Emre'  ,'Guler' ,'07', 6700	, '02','05424544454');
INSERT INTO Doctor VALUES ('Ilhan' ,'Gezer' ,'08', 8740	, '03','05616161616');
--            patient_name, patient_lname, patient_tc_no, patient_bdate, patient_cell_tel, patient_sex, dr_no
INSERT INTO Patient VALUES 
	('Ayse','Aslan','73098471284','1982-11-07','05051238743','K','01');
INSERT INTO Patient VALUES
	('Seyda','Ates','83017288311','1990-02-21','05071822991','K','01');
INSERT INTO Patient VALUES 
	('Kamile','Söylemez','29118636541','1987-05-19','05367123991','K','01');
INSERT INTO Patient VALUES 
	('Hatice','Gürbüz','78173001294','1989-04-12','05304210976','K','02');
INSERT INTO Patient VALUES 
	('Ezgi','Mutlu','72197410026','1993-09-03','05366871135','K','02');
INSERT INTO Patient VALUES 
	('Çağla','Güzel','39120126582','1985-02-19','05557916442','K','03');
INSERT INTO Patient VALUES 
	('Tuğçe','Tunç','81209448264','1992-07-27','05388919257','K','03');
INSERT INTO Patient VALUES 
	('Kübra','Çelik','79173520917','1994-06-02','05539127128','K','04');
INSERT INTO Patient VALUES
	('Fatmagül','Zeytin','29831643381','1988-03-12','05337619227','K','05');
INSERT INTO Patient VALUES 
	('Sedef','Demirci','93726394710','1992-09-25','05372639112','K','05');
INSERT INTO Patient VALUES 
	('Ayten','Elagöz','57921992638','1989-03-12','05431982734','K','06');
INSERT INTO Patient VALUES 
	('Aylin','Gültekin','68364019283','1991-03-15','05448214852','K','07');
--      pp_name, pp_lname, pp_tc_no, pp_bdate, pp_cell_tel, pp_sex, patient_tc_no
INSERT INTO PatientPartner VALUES 
	('Kemal','Aslan','29375103762','1980-02-07','05440127391','E','73098471284');
INSERT INTO PatientPartner VALUES 
	('Turgut','Ates','78126345821','1985-12-12','05349126721','E','83017288311');
INSERT INTO PatientPartner VALUES 
	('Fatih','Söylemez','74389163012','1985-11-15','05387128734','E','29118636541');
INSERT INTO PatientPartner VALUES 
	('Cihan','Gürbüz','86493209471','1987-05-02','05304214312','E','78173001294');
INSERT INTO PatientPartner VALUES
	('Ozgur','Mutlu','94736648391','1990-04-12','05366871155','E','72197410026');
INSERT INTO PatientPartner VALUES 
	('Furkan','Guzel','75320124311','1983-06-19','05557916111','E','39120126582');
INSERT INTO PatientPartner VALUES 
	('Hüsnü','Tunc','23109448643','1993-02-21','05388919861','E','81209448264');
INSERT INTO PatientPartner VALUES 
	('Emre','Çelik','52173520532','1991-02-11','05319127943','E','79173520917');
INSERT INTO PatientPartner VALUES
	('Nazim','Zeytin','42131643957','1984-12-02','05337619667','E','29831643381');
INSERT INTO PatientPartner VALUES 
	('Harun','Demirci','83526394118','1990-01-25','05332639434','E','93726394710');
INSERT INTO PatientPartner VALUES 
	('Musa','Elagöz','12321992612','1983-03-12','05431982143','E','57921992638');
INSERT INTO PatientPartner VALUES 
	('Cahit','Gültekin','44364019283','1985-07-15','05448214112','E','68364019283');
--       f_date_marriage, f_patient_tc, f_couple_tc, f_adress, f_haveAchild	
INSERT INTO Family VALUES ('2015-01-01', '73098471284', '29375103762', 'Kemerburgaz/Sariyer');
INSERT INTO Family VALUES ('2015-01-02', '83017288311', '78126345821', 'Bahcekoy/Sariyer');
INSERT INTO Family VALUES ('2015-01-03', '29118636541', '74389163012', 'Buyukdere/Sariyer');
INSERT INTO Family VALUES ('2015-01-04', '78173001294', '86493209471', 'RumeliFeneri/Sariyer', true);
INSERT INTO Family VALUES ('2015-01-05', '72197410026', '94736648391', 'Haciosman/Sariyer');
INSERT INTO Family VALUES ('2015-01-06', '39120126582', '75320124311', 'Kilyos/Sariyer', true);
INSERT INTO Family VALUES ('2015-01-07', '81209448264', '23109448643', 'Gumusdere/Sariyer');
INSERT INTO Family VALUES ('2015-01-08', '79173520917', '52173520532', 'Yenikoy/Sariyer');
INSERT INTO Family VALUES ('2015-01-09', '29831643381', '42131643957', 'Tarabya/Sariyer');
INSERT INTO Family VALUES ('2015-01-10', '93726394710', '83526394118', 'Dikilitas/Besiktas');
INSERT INTO Family VALUES ('2015-01-11', '57921992638', '12321992612', 'Fulya/Mecidiyekoy');
INSERT INTO Family VALUES ('2015-01-12', '68364019283', '44364019283', 'YTU Davutpasa/Cevizlibag');
--        hospital_no, dr_no, room_no, floor
INSERT INTO Rooms VALUES ('01', '01', '101', '1');
INSERT INTO Rooms VALUES ('01', '02', '102', '1');
INSERT INTO Rooms VALUES ('01', '03', '201', '2');
INSERT INTO Rooms VALUES ('01', '04', '202', '2');
INSERT INTO Rooms VALUES ('01', null, '301', '3');
INSERT INTO Rooms VALUES ('01', null, '302', '3');
INSERT INTO Rooms VALUES ('01', null, '401', '4');
INSERT INTO Rooms VALUES ('01', null, '402', '4');
INSERT INTO Rooms VALUES ('01', null, '501', '5');

INSERT INTO Rooms VALUES ('02', '05', '101', '1');
INSERT INTO Rooms VALUES ('02', '06', '102', '1');
INSERT INTO Rooms VALUES ('02', '07', '201', '2');
INSERT INTO Rooms VALUES ('02', null, '202', '2');

INSERT INTO Rooms VALUES ('03', '08', '101', '1');
INSERT INTO Rooms VALUES ('03', null, '102', '1');
--      hospital_no, dr_no, room_no, phone_no
INSERT INTO PhoneNumber VALUES ('01', '01', '101', '02122621101');
INSERT INTO PhoneNumber VALUES ('01', '02', '102', '02122621102');
INSERT INTO PhoneNumber VALUES ('01', '03', '201', '02122621201');
INSERT INTO PhoneNumber VALUES ('01', '04', '202', '02122621202');
INSERT INTO PhoneNumber VALUES ('01', null, '301', '02122621301');
INSERT INTO PhoneNumber VALUES ('01', null, '302', '02122621302');
INSERT INTO PhoneNumber VALUES ('01', null, '401', '02122621401');
INSERT INTO PhoneNumber VALUES ('01', null, '402', '02122621402');

INSERT INTO PhoneNumber VALUES ('02', '05', '101', '02122622301');
INSERT INTO PhoneNumber VALUES ('02', '06', '102', '02122622302');
INSERT INTO PhoneNumber VALUES ('02', '07', '201', '02122622401');
INSERT INTO PhoneNumber VALUES ('02', null, '202', '02122622402');

INSERT INTO PhoneNumber VALUES ('03', '08', '101', '02122623401');
INSERT INTO PhoneNumber VALUES ('03', null, '102', '02122623402');
--         pill_no, pill_name, pill_type
INSERT INTO Pill VALUES ('0001', 'Opuros', 'Sperm artirici');
INSERT INTO Pill VALUES ('0002', 'Puros', 'Yumurta artirici');
INSERT INTO Pill VALUES ('0003', 'Aspirin', 'Acilara son');
INSERT INTO Pill VALUES ('0004', 'Batiodin', 'Gargara');
INSERT INTO Pill VALUES ('0005', 'Beklazon', 'Krem');
INSERT INTO Pill VALUES ('0006', 'Burnil', 'Burun Damlasi');
INSERT INTO Pill VALUES ('0007', 'Awamys', 'Burun Spreyi');
INSERT INTO Pill VALUES ('0008', 'Lenovo', 'Pc Markasi');
INSERT INTO Pill VALUES ('0009', 'Asus', 'Oda bir Pc Markasidir.');
INSERT INTO Pill VALUES ('0010', 'Samsung', 'Bu farkli telefon markasidir.');
INSERT INTO Pill VALUES ('0011', 'Omer', 'Insan ve erkektir.');
INSERT INTO Pill VALUES ('0012', 'Furkan', 'Labi veren hocadir.');

INSERT INTO Ilac_Hasta VALUES ('73098471284', '0002');
INSERT INTO Ilac_Hasta VALUES ('73098471284', '0003');
INSERT INTO Ilac_Hasta VALUES ('83017288311', '0002');
INSERT INTO Ilac_Hasta VALUES ('29118636541', '0004');
INSERT INTO Ilac_Hasta VALUES ('78173001294', '0005');
INSERT INTO Ilac_Hasta VALUES ('72197410026', '0002');
INSERT INTO Ilac_Hasta VALUES ('39120126582', '0002');
INSERT INTO Ilac_Hasta VALUES ('81209448264', '0002');
INSERT INTO Ilac_Hasta VALUES ('79173520917', '0002');
INSERT INTO Ilac_Hasta VALUES ('29831643381', '0002');
INSERT INTO Ilac_Hasta VALUES ('93726394710', '0002');
INSERT INTO Ilac_Hasta VALUES ('57921992638', '0002');
INSERT INTO Ilac_Hasta VALUES ('68364019283', '0003');
INSERT INTO Ilac_Hasta VALUES ('68364019283', '0004');

