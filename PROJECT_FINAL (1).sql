create database TC08_insurance_company; 
use TC08_insurance_company; 

create table TC08_customer( 
cust_id varchar(20) primary key,
cust_fname varchar(20) not null,
cust_lname varchar(20) ,
cust_dob date,
cust_gender char(5),
cust_address varchar(40),
cust_mob_number varchar(20)  not null,
cust_email varchar(30),
cust_passport_number varchar(30) ,
cust_marital_status char(10),
cust_pps_number varchar(20) );

create table TC08_vehicle(
vehicle_id varchar(20) primary key,
cust_id varchar(20)  not null,
policy_id varchar(20),
vehicle_registration_number varchar(20) not null,
vehicle_value varchar(10),
vehicle_type varchar(20),
vehicle_size varchar(10),
vehicle_number_of_seat integer,
vehicle_manufacturer varchar(20),
vehicle_engine_number integer,
vehicle_chasis_number integer,
vehicle_number varchar(30) not null,
vehicle_model_number varchar(30));
 
CREATE table TC08_claim(
claim_id varchar(20)  primary key,
cust_id varchar(20)   not null,
agreement_id varchar(20)   not null,
claim_amount int  ,
incident_id varchar(20)  not null,
date_of_claim date  not null,
damage_type varchar(20)  not null,
claim_status char(10)  not null);

create table TC08_claim_settlement(
claim_settlement_id varchar(20)  primary key,
claim_id varchar(20)  not null,
cust_id varchar(20)  not null,
vehicle_id varchar(20)  not null,
date_settled date,
amount_paid int,
coverage_id varchar(20)  not null);

create table TC08_incident_report (
incident_report_id varchar(20) primary key,
cust_id varchar(20)  not null,
incident_inspector varchar(30),
incident_cost integer,
incident_type char(20)  not null,
incident_date date,
incident_report_description varchar(100));

create table TC08_application(
application_id varchar(20) primary key,
customer_id varchar(20) not null,
vehicle_id varchar(20) not null,
application_status char(20) not null,
coverage varchar(60) not null);

create table TC08_insurance_policy(
agreement_id varchar(20) primary key,
application_id varchar(20) not null,
cust_id varchar(20) not null,
department_name varchar(20),
policy_number varchar(20) not null,
start_date date,
expiry_date date,
term_condition_description varchar(100));

create table TC08_premium_payment
(premium_payment_id varchar(20) primary key,
cust_id varchar(20) not null,
policy_number varchar(20) not null,
premium_payment_schedule date not null,
premium_payment_amount integer not null,
receipt_id varchar(20) );

create table TC08_insurance_company(
company_name varchar(40)primary key,
company_address varchar(40) ,
company_contact_number integer ,
company_fax integer ,
company_email varchar(30) ,
company_website varchar(30),
company_location varchar(30) ,
company_department_name varchar(30) ,
company_office_name varchar(30) );

create table TC08_staff(
staff_id varchar(20) primary key,
company_name varchar(40)  not null,
staff_fname varchar(10) not null,
staff_lname varchar(10),
staff_address varchar(20),
staff_contact varchar(15) not null,
staff_gender char(10),
staff_marital_status char(15),
staff_nationality char(15),
staff_qualification varchar(20),
staff_allowance integer,
staff_pps_number integer);

create table TC08_product(
product_number varchar(20) primary key,
company_name varchar(40) not null,
product_price integer ,
product_type char(30));

create table TC08_department(
department_name varchar(20) primary key,
company_name varchar(40) not null,
office varchar(20) ,
contact_information varchar(20),
department_staff varchar(50) ,
department_leader varchar(20));

create table TC08_office(
office_name varchar (20) primary key,
office_leader varchar (20) not null,
contact_information varchar (20) not null,
address varchar (20) not null,
admin_cost integer ,
department_name varchar (20) not null,
company_name  varchar (40) not null);

create table TC08_coverage(
coverage_id varchar(20) primary key,
coverage_amount integer not null,
coverage_type char(50) not null,
coverage_level char(50) not null,
product_id varchar(20) not null,
coverage_description varchar(100) not null,
coverage_terms varchar(50) not null,
company_name varchar(40) not null);
 
create table TC08_quote(
quote_id varchar (20) primary key,
issue_date date not null,
valid_from_date date not null,
valid_till_date date not null,
description varchar (100) ,
product_id varchar (20) not null,
coverage_level varchar (20) not null,
application_id varchar (20) not null,
cust_id varchar (20) not null);
  
insert into TC08_department values ('claim','tata insurance','hyderabad','7386213897','claim officer','divya'),
('finance','birla insurance','mumbai','9807653214','financial advisor','priya'),
('legal','lic insurance','kolkata','8905463218','legal advocate','pranav'),
('marketing','xyz insurance','delhi','8019523766','marketing leader','sanju'),
('underwriting','tata insurance','pune','7650981234','manager','rajesh'),
('accounting','birla insurance','mumbai','8709126534','manager','abhinav'),
('customer service','lic insurance','pune','6319084562','call center','anji'),
('sales','xyz insurance','hyderabad','8902457863','salesman','kesav'),
('administration','tata insurance','delhi','9081237654','leader','hanuma'),
('investment','birla insurance','jaipur','8760128765','financial advisor','vaishnavi');

insert into TC08_office values ('Sharma and sons','Pranav reddy','9390035765','Hyderabad ','1200000','sales Dept ','tata insurance'),
('Pathak limited ','Deeksha pathak ','9876403212','Banglore','1400000','R&D dept','Birla insurance'),
('Ria Co','Shubham Sharma','9123562389','Lucknow','1450000','Accounts dept','lic insurance'),
('Bnadhu limited','Balwant Rai','9123098789','Delhi','1900000','Hr dept ','xyz insurance'),
('Preethi LLC','Krishna Mohan','9723561289','Pune','1650000','Admin dept','tata insurance'),
('Kamal inc','Dhavani  LLC','9567345678','Jaipur ','1500000','sales Dept','Birla insurance'),
('Singj limited','Sri Charan','9234567891','Mumbai','1300000','R&D dept','lic insurance'),
('Dhavani LLC','Prabhu Prasad','9278123456','Chennai','1100000','Hr dept','xyz insurance'),
('Bista Inc','Bharghav reddy','9109234511','Banglore','1350000','Accounts dept','tata insurance'),
('Nikitha and Sons','Kamal Kaushik','91023678123','Delhi','1700000','finance dept','Birla insurance');

insert into TC08_coverage values ('4001','900078000','Liability Insurance','high','201','When accident takes place before your fault','1 year','tata insurance'),
('4002','200450000','Collision Coverage','medium','202','Bear your car repair expenses after the accident','7 month','birla insurance'),
('4003','100034560','Personal Injury Protection','low','203','personal injury protection will cover all the cost','1 year 4 months','lic insurance'),
('4004','810045000	','Underinsured Motorist Protection','low','204','When accident takes place before your fault','2 years','xyz insurance'),
('4005','940055000','Third-party car insurance','medium','205','Includes risk factors with your vehicle, driver, passengers','1 year 8 months','tata insurance'),
('4006','993004500','Comprehensive Coverage','medium','206','Personal injury protection will cover all the costs associated with the accident','4 months','birla insurance'),
('4007','100444000','Third-party car insurance','medium','207','When accident takes place before your fault','11 months','lic insurance'),
('4008','201235000','comprehensive Coverage','high','208','Personal injury protection will cover all the costs associated with the accident','14 months','xyz insurance'),
('4009','400008000','Personal Injury Protection','low','209','Include risk factors with your vehicle, driver, passengers','21 months','tata insurance'),
('4010','100006700','collision coverage ','medium','210','When accident takes place before your fault','16 months','birla insurance');
 
insert into tc08_staff values ('20001','tata insurance','Pranav','Reddy','1-38A Hyd 516360','9390035765','M','single','Hindu','pass in 12th','1000','706153101'),
('20002','birla insurance','Rajesh','Naidu','2-45B Ap 516342','9854631274','M','single','Hindu','pass in 12th','2000','706153102'),
('20003','lic insurance','Sanju','John','5-149G Ap 500312','9632541874','M','single','Hindu','degree qualified','1500','706153103'),
('20004','xyz insurance','Divya','Sree','2-14C Ap 500245','9587412365','F','single','Hindu','pass in 12th','2500','706153104'),
('20005','tata insurance','Chandhana','Priya','1-57D Ap 500102','9142758632','F','single','Hindu','degree qualified','2500','706153105'),
('20006','birla insurance','Kesava','Kumar','4-21E Hyd 501241','9425786312','M','single','Hindu','degree qualified','3000','706153106'),
('20007','lic insurance','Abhinav','Reddy','3-23C Ap 574869','9141253685','M','single','Hindu','pass in 12th','1000','706153107'),
('20008','xyz insurance','Allu','Hanuma','5-47A Hyd 584712','9124256781','M','single','Hindu','degree qualified','1500','706153108'),
('20009','tata insurance','Golla','Anji','6-21E Ap 547814','9365278541','M','single','Hindu','pass in 12th','3000','706153109'),
('20010','birla insurance','Errigi','Vaishnavi','7-43A Hyd 578961','9744855231','F','single','Hindu','10th fail','2500','706153101');



insert into TC08_insurance_policy values('2001','2022001','91004304','investment','1001','2002-02-09','2022-02-09','applicable to certain situations mentioned'),
('2002','2022002','34893274','finance','1002','2019-09-09','2020-09-09','applicable to certain situations mentioned'),
('2003','2022003','18345859','finance','1003','2011-10-10','2021-10-10','applicable to certain situations mentioned'),
('2004','2022004','80490454','marketing','1004','2017-12-28','2022-12-28','applicable to certain situations mentioned'),
('2005','2022005','80490454','accounting','1005','2004-08-12','2014-08-12','applicable to certain situations mentioned'),
('2006','2022006','73850455','accounting','1006','2005-03-27','2020-03-27','applicable to certain situations mentioned'),
('2007','2022007','65835763','customer service','1007','2019-07-30','2020-07-30','applicable to certain situations mentioned')	,
('2008','2022008','65835763','sales','1008','2005-05-09','2015-05-09','applicable to certain situations mentioned'),
('2009','2022009','08357495','marketing','1009','2017-12-18','2025-12-18','applicable to certain situations mentioned'),
('2010','2022010','15245121','investment','1010','2007-06-28','2017-06-28','applicable to certain situations mentioned');

insert into TC08_quote values ('5001',' 2010-10-09','2010-10-09','2017-10-09','ford tuscan','AA001','high','2022001','91004304'),
('5002','2011-04-23','2011-04-23','2016-04-23','lamborghini aventador','AB002','medium','2022002','34893274'),
('5003','2008-09-30','2008-09-30','2017-09-23','buggati veyron','AC003','low','2022003','18345859'),
('5004','2021-10-09','2021-10-09','2026-10-09','rolls royce','AD004','low','2022003','80490454'),
('5005','2012-12-28','2012-12-28','2019-12-28','ford endeavor','AE005','high','2022004','80490454'),
('5006','2018-02-12','2018-02-12','2023-02-12','ducati','AF006','medium','2022005','73850455'),
('5007','2019-03-04','2019-03-04','2024-03-04','royal enfield','AG007','high','2022006','65835763'),
('5008','2018-07-09','2018-07-09','2023-07-09','harley davidson','AH008','low','2022007','65835763'),
('5009','2020-04-04','2020-04-04','2025-04-04','mini cooper','AI009','medium','2022008','08357495'),
('5010','2020-05-05','2020-05-05','2025-05-05','aston martin','AJ010','low','2022009','15245121');

insert into TC08_claim values('14983950','91004304','297389573','50000000','2011469','2010-09-22','accident','Pending'),
('94859046','08357495','298753955','45000','2015843','2001-04-12','vandalism','Done'),
('12849239','19847924','987563858','10000','2017815','2020-10-10','collision','Done'),
('18333088','34893274','671876454','34500','2015843','2020-04-19','self damage','Pending'),
('24889048','18345859','194879875','47020','2018101','2019-05-08','vandalism','Pending'),
('13744838','73850455','859385739','12000','2013785','2021-12-27','collision','Done') ,
('23677866','65835763','928563895','2000000','2016121','2019-08-24','accident','Done') ,
('11498777','84894274','172479845','52650000','2017815','2018-07-14','self damage','Done') ,
('84478787','80490454','187985731','10097300','2011324','2001-08-16','collision','Pending'),
('21137676','15245121','187498236','40000','2016121','2009-12-12','vandalism','Done');

insert into TC08_claim_settlement values('9001','14983950','91004304','8001','2010-09-30','30000','4001'),
('9002','94859046','08357495','8002','2001-05-30','24000','4002'),
('9003','12849239','19847924','8003','2020-12-18','12000','4003'),
('9004','18333088','34893274','8004','2020-09-20','45000','4004'),
('9005','24889048','18345859','8005','2019-09-21','32000','4005'),
('9006','13744838','73850455','8006','2022-03-27','30000','4006'),
('9007','23677866','65835763','8007','2020-02-03','31000','4007'),
('9008','11498777','84894274','8008','2019-01-29','87000','4008'),
('9009','84478787','80490454','8009','2002-10-30','10000','4009'),
('9010','21137676','15245121','8010','2010-03-27','15000','4010');

insert into tc08_customer values
('91004304','Rana','Daggupati','1988-05-24','M',"1-23,Dharwad,500098",'9247252968','ramd1988@gmail.com','M4692384','Married','39093'),
('34893274','Vivek','Yarki','1990-04-17','M',"6-32A,Kalki,501908",'8472949510','yvivek417@gmail.com','V1864328','Married','46522'),
('18345859','Kushi','Goosari','1995-05-29','F',"4-12B,Hubli,510840",'6853095830','gkri123@gmail.com','V5465435','Single','15763'),
('80490454','Allu','Aruna','1998-03-27','F',"1-63,Gadag,568031",'7902847095','aaruna7479@gmail.com','K6456343','Married','27965'),
('84894274','Ram','Konidala','2000-07-24','M',"2-54S,Humpi,539843",'9887504957','ramkonidala@gmail.com','M8464335','Single','53464'),
('73850455','Radhika','Dimple','1983-08-09','F',"2-78D,Araku,534859",'7927290587','radhika8983@gmail.com','K76873635','Divorced','76435'),
('65835763','Shaik','Ashiya','1996-06-23','F',"3-90,Indore,576846",'6932473204','shaik5234@gmail.com','V68746354','Married','46465'),
('19847924','Ramesh','Yadav','2002-11-30','M',"5-31F,Delhi,580498",'8043573403','yadavr2002@gmail.com','N76465463','Single','15465'),
('08357495','Gagan','Yelmar','1997-10-02','M',"1-56,Ladak,524792",'7928479472','ygagan1002@gmail.com','K76783546','Married','65465'),
('15245121','Radha','Krishna','1982-10-10','F',"1-37,Andhra,535217",'7386292562','radhak123@gmail.com','R23498765','Married','54621');

insert into TC08_application values
('2022001','91004304','8001','Pending','Personal Damage Protection'),
('2022002','34893274','8002','Rejected','Damage caused due to Natural Disaster'),
('2022003','18345859','8003','Done','Personal Accident Cover'),
('2022004','80490454','8004','Done','Comprehensive Coverage'),
('2022005','84894274','8005','Pending','Third-Party Liability Only Cover'),
('2022006','73850455','8006','Rejected','Act of God'),
('2022007','65835763','8007','Done','Comprehensive Coverage'),
('2022008','19847924','8008','Done','Personal Accident Cover'),
('2022009','08357495','8009','Pending','Personal Damage Protection'),
('2022010','15245121','8010','Rejected','Damage caused due to Natural Disaster');

insert into tc08_premium_payment values
('3001','91004304','1001','2012-12-28','500000000','1401'),
('3002','34893274','1002','2013-10-10','3000','1402'),
('3003','15245121','1003','2015-12-28','43000','1403'),
('3004','73850455','1004','2019-10-06','980000000','1404'),
('3005','65835763','1005','2021-08-10','76000','1405'),								
('3006','08357495','1006','2009-08-22','2000','1406'),
('3007','18345859','1007','2012-02-27','40000000','1407'),
('3008','80490454','1008','2013-01-06','2100','1408'),
('3009','84894274','1009','2018-09-21','6000','1409'),
('3010','19847924','1010','2020-12-09','77000','1410');
insert into tc08_premium_payment(premium_payment_id,	cust_id,	policy_number,	premium_payment_schedule,	premium_payment_amount) values
('3011','19847924','1011','2021-12-09','75000');

update tc08_premium_payment set receipt_id = null where premium_payment_id = 3001;
set sql_safe_updates = 0;


insert into tc08_product values
('6001','tata insurance','120000','Bike insurance'),
('6002','birla insurance','500000','car insurance'),
('6003','lic insurance','150000','two wheeler insurance'),
('6004','xyz insurance','240000','two wheeler insurance'),
('6005','tata insurance','300000','bike insurance'),
('6006','birla insurance','400000','car insurance'),
('6007','lic insurance','350000','car-economy'),
('6008','xyz insurance','450000','car/bike'),
('6009','tata insurance','500000','car insurance'),
('6010','birla insurance ','150000','bike insurance');

insert into tc08_vehicle values
('8001','91004304','1001','A01','4000000','heavy vehicle','L','6','audi','7386','3409','05846','4Y1SL65848Z411439'),
('8002','34893274','1002','B02','2500000','sedan','M','6','honda','2925','1265','46952','1HGBH41JXMN109186'),
('8003','15245121','1003','C03','1200000','sedan','M','4','suzuki','9133','6512','35495','2LJCPCBLCX1100023'),
('8004','73850455','1004','D04','1000000','heavy vehicle','L','4','hyundai','2011','9974','64966','1HGBH41JXMN109186'),
('8005','65835763','1005','E05','2670000','heavy vehicle','L','6','volkswagen','9194','1298','68785','4S3BMHB68B32886050'),
('8006','08357495','1006','F06','1700000','sedan','M','8','honda','3476','3409','67965','1T2CIHH95A2588875321'),
('8007','18345859','1007','G07','800000','two wheeler','S','4','bmw','8712','8734','68479','2R3EDIN76S343635534'),
('8008','80490454','1008','H08','4500000','heavy vehicle','L','6','suzuki','9076','6512','78953','7O2DVBI49H84876346'),
('8009','84894274','1009','I09','3000000','heavy vehicle','L','4','honda','4561','1209','98956','2P2XVJ54E5U39737653'),
('8010','19847924','1010','J10','3100000','sedan','M','6','suzuki','6765','2890','05989','4H3VCK367BJK908235727'),
('8011','91004304','1011','A02','900000',	'two wheeler',	'S',	'2',	'Vespa',	'1414',	'1212',	'5959',	'4DIDB45BSFEHJCBUSB2');

insert into tc08_insurance_company values
('Aviva insurance','Ameerpet, Hyderabad,Telangana 5000308','76912758','41299738','Avivainsurance@help.com','avivainsurance.com','Hyderabad','AvivaVehicle office ','AvivaVehicle office') ,
('Bajaj Insurance','Andhra pradesh, Telengana ','99029888','60496251','BajajInsurance@gmail.com','bajajinsurance.com','Andhra pradesh','BajajVehicle office ','BajajVehicle office') ,
('Bharath Insurance','Millers road, Banglore- 560 001, India ','67965544','73604118','BharathInsurance@vehicle.com','bharathinsurance.com','Banglore','BharathVehicle office','BharathVehicle office '),
('Canara Bank','N.M.Joshi Marg, Mahalaxmi, Mumbai ','75603428','94954485','CanaraBank@help.com','canarabank.com','Mumbai ','Canara BankVehicle office  ','Canara BankVehicle office')  ,
('ICICI Bank','Hyderabad , Telengana ,500029','81659198','57177717','ICICIBank@gamil.com','icicibank.com','Hyderabad ','ICICI BankVehicle office ','ICICI BankVehicle office') ,
('SBI Bank','Gurugram(Haryana) - 122002','41292900','68081607','SBIBank123@gmail.com','sbibank.com','Gurugram','SBI BankVehicle office ','SBI BankVehicle office' ),
('Max Insurance','Bandra(E), Mumbai - 400 051','39074361','89752452','MaxInsurance@help.com','maxinsurance.com','Bandra','Max InsuranceVehicle office ','Max InsuranceVehicle office') ,
('Future Insurance','Millers road, Banglore- 560 001, India ','36837279','94033374','FutureInsurance@gmail.com','futureinsurance.com','Banglore ','Future InsuranceVehicle office ','Future InsuranceVehicle office'), 
('DLF Insurance','Andhra pradesh, Telengana ','55100284','98661714','DLFInsurance123@gamil.com ','dflinsurance.com','Andhra pradesh','DLF InsuranceVehicle office ','DLF InsuranceVehicle office'), 
('Exide Insurance','Prabhadevi, Mumbai ','66911806','33976574','ExideInsurance@help.com','exideinsurance.com', 'Mumbai ','Exide InsuranceVehicle office ','Exide InsuranceVehicle office');

insert into tc08_incident_report values
('2011324','91004304','Prabhu prasad','10000','ACCIDENT','2012-07-13','crashed into a tree'),
('2011469','34893274','Rama rao','20000','WATER DAMAGE','2011-12-7','flood water'),
('2013785','18345859','Rajesh' ,'35000','THEFT','2013-9-4','stolen from parking'),
('2015843','80490454','Ramesh','25000','VANDALISM','2015-11-15','third party damage'),
('2016121','84894274','Suresh','59000','ACCIDENT','2016-5-4','accident at traffic signal'),
('2017712','73850455','Mukesh','61000','MULTI-CRASH','2018-01-17','accident on the highway'),
('2017815','65835763','Ajay Kumar','84000','THEFT','2017-12-07','stolen by oppositon fans'),
('2018101','19847924','Aravind','91000','HAIL DAMAGE','2018-05-13','heavy damage by hail'),
('2020951','08357495','Agasthya','36000','WINDSHEILD DAMAGE','2020-06-20','damage due to cyclone'),
('2021753','15245121','Arjun','45000','REAR END CRASH','2021-03-27','rear ended by truck');

alter table TC08_vehicle 
add foreign key (cust_id) references TC08_customer (cust_id);

alter table TC08_claim
add foreign key (cust_id) references TC08_customer (cust_id);

set foreign_key_checks=0;

alter table TC08_claim_settlement
add foreign key (cust_id) references TC08_customer (cust_id),
add foreign key (claim_id) references TC08_claim (claim_id);

alter table TC08_incident_report
add foreign key (cust_id) references TC08_customer (cust_id);

alter table tc08_application
add foreign key(customer_id) references tc08_customer(cust_id);

alter table TC08_insurance_policy
add foreign key (cust_id) references TC08_customer (cust_id);

alter table TC08_insurance_policy
add foreign key(application_id) references TC08_application(application_id);

alter table tc08_premium_payment
add foreign key(cust_id) references tc08_customer(cust_id);


alter table tc08_staff
add foreign key(company_name) references tc08_insurance_company(company_name);

alter table tc08_product
add foreign key(company_name) references tc08_insurance_company(company_name);

alter table tc08_department
add foreign key(company_name) references tc08_insurance_company(company_name);

alter table tc08_office
add foreign key(department_name) references tc08_department(department_name);

alter table tc08_office
add foreign key(company_name) references tc08_insurance_company(company_name);

alter table tc08_coverage
add foreign key(company_name) references tc08_insurance_company(company_name);


alter table tc08_quote
add foreign key(cust_id) references tc08_customer(cust_id),
add foreign key(application_id) references tc08_application(application_id);


/*select * from tc08_customer;
select * from tc08_vehicle;
select * from tc08_claim;
select * from tc08_claim_settlement;
select * from tc08_incident_report;
select * from tc08_premium_payment;
select * from tc08_insurance_company;
select * from tc08_product;
select * from tc08_department;
select * from tc08_office;
select * from tc08_coverage;
select* from tc08_application;
select * from tc08_quote;
select * from tc08_insurance_policy;
select * from tc08_receipt;
select * from tc08_staff;*/




      
      
/*1*/
select TC08_customer.*,TC08_vehicle.*
FROM TC08_customer
INNER JOIN TC08_vehicle
ON TC08_customer.cust_id = TC08_vehicle.cust_id
INNER JOIN TC08_claim
ON TC08_customer.cust_id = TC08_claim.cust_id
WHERE TC08_claim.incident_id IS NOT NULL
AND TC08_claim.claim_status LIKE "pending";

/*2*/
SELECT TC08_customer.*
FROM TC08_Customer
inner JOIN TC08_premium_payment
ON TC08_customer.cust_id = TC08_premium_payment.cust_id 
WHERE premium_payment_amount > (SELECT SUM(cust_id) FROM TC08_customer);

/*3*/
select tc08_insurance_company.* from tc08_insurance_company 
inner join tc08_department on tc08_insurance_company.company_name = tc08_department.company_name
inner join tc08_product  on tc08_insurance_company.company_name = tc08_product.company_name
group by company_name
having count( distinct department_name) < count( distinct product_number) and count( distinct company_location) >1;


/*4*/
select tc08_customer.* from tc08_customer,tc08_premium_payment,tc08_incident_report
where (tc08_customer.cust_id= tc08_premium_payment.cust_id and
tc08_customer.cust_id= tc08_incident_report.cust_id and
tc08_incident_report.incident_type like 'ACCIDENT' and 
tc08_premium_payment.receipt_id is null and
tc08_customer.cust_id in (select cust_id from tc08_vehicle group by cust_id having count(cust_id)>1));


/*5*/
Select tc08_premium_payment.cust_id, tc08_premium_payment.premium_payment_amount,  
tc08_vehicle.vehicle_id,  tc08_vehicle.vehicle_number
From tc08_premium_payment
inner join tc08_vehicle
on  tc08_vehicle.cust_id = tc08_premium_payment.cust_id
where (tc08_premium_payment.premium_payment_amount >  tc08_vehicle.vehicle_number);

/*6*/
select tc08_customer.* from tc08_customer where cust_id in (
SELECT distinct(tc08_customer.cust_id)
FROM TC08_customer, TC08_vehicle, TC08_claim  , TC08_coverage , TC08_claim_settlement 
WHERE tc08_vehicle.cust_id = tc08_customer.cust_id AND
      tc08_claim.cust_id = tc08_customer.cust_id AND
	  tc08_claim_settlement.claim_id = tc08_claim.claim_id AND
      tc08_claim.claim_amount < tc08_coverage.coverage_amount AND
      tc08_claim.claim_amount > (tc08_claim_settlement.claim_settlement_id + 
                                       tc08_vehicle.vehicle_id + tc08_claim.claim_id + tc08_customer.cust_id)
);
