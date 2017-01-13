drop table doctor;
drop table organization;
drop table patient;

create table organization(
           room_no number(4),
           doctor_name varchar2(20),
           bill_cash number(8,2),
           PRIMARY KEY(room_no,doctor_name)     
);
create table patient(
	   registretion_no number(4),
	   patient_name varchar2(20),
	   diseage_type varchar2(20),
           bill_paide number(5),
	   PRIMARY KEY(registretion_no,patient_name)
);
create table doctor(
	   rom_no number(4),
	   doctor_naame varchar2(20),
	   register_no number(4),
	   patient_naame varchar2(20),
           Prescription varchar2(30),
           FOREIGN KEY(rom_no,doctor_naame) REFERENCES organization (room_no,doctor_name),
           FOREIGN KEY(register_no,patient_naame) REFERENCES patient (registretion_no,patient_name)  
);
describe organization;
describe patient;
describe doctor;