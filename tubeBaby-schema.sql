
DROP TABLE Hospital;
CREATE TABLE Hospital (
	hospital_no        varchar(12) not null,
	hospital_name      varchar(12) not null,
	hospital_address   varchar(20) not null,
	hospital_telephone varchar(12) not null,
	primary key (hospital_no)
);

DROP TABLE Doctor;
CREATE TABLE Doctor (
	dr_name           varchar(15) not null,
	dr_lname          varchar(15) not null,
	dr_no             varchar(12) not null,
	hospital_no       varchar(12) not null,
	dr_cell_telephone varchar(12),
	primary key (dr_no),
	foreign key (hospital_no) references Hospital(hospital_no)
);

DROP TABLE Patient;
CREATE TABLE Patient (
	patient_name     varchar(15) not null,
	patient_lname    varchar(15) not null,
	patient_tc_no    varchar(12) not null,
	patient_bdate    date,
	patient_cell_tel varchar(12),
	patient_sex      varchar,
	dr_no            varchar(12) not null,
	primary key (patient_tc_no),
	foreign key (dr_no) references Doctor(dr_no)
);

DROP TABLE PatientPartner;
CREATE TABLE PatientPartner (
	pp_name         varchar(15) not null,
	pp_lname        varchar(15) not null,
	pp_tc_no        varchar(12) not null,
	pp_bdate        date,
	pp_cell_tel     varchar(12),
	pp_sex          char,
	patient_tc_no   varchar(15) not null,
	primary key (pp_tc_no),
	foreign key (patient_tc_no) references Patient(patient_tc_no)
);

DROP TABLE Family;
CREATE TABLE Family (
        --family_no   smallint, -- family no kavramina gerek yok?	
                              -- istersek foreign keyleri birlestirebiliriz.					
	f_date_marriage       date,
	f_patient_tc          varchar(12) not null,
	f_couple_tc           varchar(12) not null, 		
	f_adress              varchar(30),
	f_haveAchild          boolean default false,
	primary key (f_patient_tc, f_couple_tc),
	foreign key (f_patient_tc) references Patient(patient_tc_no),
	foreign key (f_couple_tc) references PatientPartner(pp_tc_no)
);

DROP TABLE Odalar;
CREATE TABLE Odalar (
	hastane_no			varchar(12) not null,
	dr_no			        varchar(12), -- illa odanin dolu olmasi gerekmiyor.
	oda_no				    varchar(12) not null,
	kat								char not null,
	primary key (oda_no),
	foreign key (hastane_no) references Hastane(hastane_no),
	foreign key (dr_no)  references Doktor(dr_no)
);

DROP TABLE Telefon_info;
CREATE TABLE Telefon_info (
	hastane_no		varchar(12) not null,
	dr_no					varchar(12), -- illa odanin dolu olmasi gerekmiyor.
	oda_no				varchar(12) not null,
	tel_no				varchar(12) not null,
	primary key (tel_no),
	foreign key (hastane_no) references Hastane(hastane_no),
	foreign key (dr_no) 	 references Doktor(dr_no),
	foreign key (oda_no) 	 references Odalar(oda_no)
);

DROP TABLE Ilac;
CREATE TABLE Ilac (
	ilac_no					varchar(12) not null,
	ilac_ismi				varchar(12) not null,
	ilac_turu				varchar(30),
	primary key (ilac_no)
);

DROP TABLE Ilac_Hasta;
CREATE TABLE Ilac_Hasta (
	hasta_tc_no			varchar(12),
	ilac_no					varchar(12),
	primary key (hasta_tc_no, ilac_no),
	foreign key (hasta_tc_no) references Hasta(hasta_tc_no),
	foreign key (ilac_no) references Ilac(ilac_no)
);

