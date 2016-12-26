
DROP TABLE Hospital;
CREATE TABLE Hospital (
	hospital_no        varchar(12) not null,
	hospital_name      varchar(20) not null,
	hospital_address   varchar(20) not null,
	hospital_telephone varchar(12) not null,
	primary key (hospital_no)
);

DROP TABLE Doctor;
CREATE TABLE Doctor (
	dr_no             varchar(12) not null,
	dr_name           varchar(15) not null,
	dr_lname          varchar(15) not null,
	dr_email	  varchar(15),
	dr_cell_telephone varchar(12),
	hospital_no       varchar(12) not null,
	dr_hire_date	  date,
	dr_salary         int,
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
	foreign key (f_couple_tc)  references PatientPartner(pp_tc_no)
);

DROP TABLE Rooms;
CREATE TABLE Rooms (
	hospital_no    varchar(12) not null,
	dr_no          varchar(12), -- illa odanin dolu olmasi gerekmiyor.
	room_no        varchar(12) not null,
	floor          char not null,
	primary key (hospital_no, room_no),
	foreign key (hospital_no) references Hospital(hospital_no),
	foreign key (dr_no)       references Doctor(dr_no)
);

DROP TABLE PhoneNumber;
CREATE TABLE PhoneNumber (
	hospital_no       varchar(12) not null,
	dr_no             varchar(12), -- illa odanin dolu olmasi gerekmiyor.
	room_no           varchar(12) not null,
	phone_no          varchar(12) not null,
	primary key (phone_no),
	foreign key (hospital_no) references Hospital(hospital_no),
	foreign key (dr_no)       references Doctor(dr_no),
	foreign key (room_no, hospital_no)     references Rooms(room_no, hospital_no)
);

DROP TABLE Pill;
CREATE TABLE Pill (
	pill_no       varchar(12) not null,
	pill_name     varchar(12) not null,
	pill_type     varchar(30),
	primary key (pill_no)
);

DROP TABLE PillPatient;
CREATE TABLE PillPatient (
	patient_tc_no    varchar(12),
	pill_no          varchar(12),
	primary key (patient_tc_no, pill_no),
	foreign key (patient_tc_no) references Patient(patient_tc_no),
	foreign key (pill_no)       references Pill(pill_no)
);
