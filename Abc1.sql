use abc;
create table abc.regions(region_id int primary key,region_name varchar(45));
insert into regions values(101,'Europe'),(102,'America');
select * from regions;
show tables;
create table countries(country_cd float primary key,country_name varchar(45),region_id int,foreign key(region_id) references regions(region_id));
insert into countries values(+91,'india',101),(+1,'America',102);
create table department(dept_id int primary key,dept_name varchar(45));
insert into department values(111,'Marketing'),(222,'Software Engineer'),(333,'Java');
create table job_type(job_type_cd int primary key,job_type_name varchar(45));
insert into job_type values(1131,'IT Manager'),(1132,'HR manager'),(1133,'IT Developer'),(1134,'HR Assistent');
create table job_status(job_status_cd int primary key,status_desc varchar(45));
insert into job_status values(1,'Open'),(2,'close'),(3,'pending');
create table appl_status(appl_status_cd int primary key,status_desc varchar(45));
insert into appl_status values(1,'written test'),(2,'passed interview1'),(3,'short listed');
create table education_levels(edu_level_cd int primary key,edu_level_name varchar(45));
insert into education_levels values(1111,'graduate'),(1212,'post graduate'),(1313,'phd');
create table edu_type(edu_type_cd int primary key,edu_type_name varchar(45));
insert into edu_type values(121,'civil engg'),(133,'computer eng'),(144,'business admin');
create table jobs(job_id int primary key,job_title varchar(45),job_desc varchar(4000),job_type_cd int,foreign key(job_type_cd) references job_type(job_type_cd),dept_id int,foreign key(dept_id) references department(dept_id),
job_status_cd int,foreign key(job_status_cd) references job_status(job_status_cd)); 
insert into jobs values(1500,'Software Engg','Use this Payroll Accountant job description sample to advertise your vacancies 
and find the best candidates',1131,111,1),(1551,'Trainee Software','Use this sample of Scrum Master interview questions to evaluate your candidates’ 
skills and find the best hire for your company',1132,222,2),(1552,'Java','Use this Senior Java Developer job description template to attract and 
hire skilled professionals for your engineering team',1133,333,3);
create table applicants(appl_id int primary key,frist_name varchar(45),last_name varchar(45),email varchar(45),phone_num float(10),address varchar(45),city varchar(45),state varchar(45),zip float(6),
resume_file_name varchar(45),cover_letter_text varchar(45),date_applied float(20),employee_flag varchar(45),current_employee_name varchar(45),years_of_exp float(5),foreign key(country_cd) references countries(country_cd),foreign key(appl_status_cd) references appl_status(appl_status_cd),foreign key(edu_level_cd) references education_levels(edu_level_cd),
foreign key(edu_type_cd) references edu_type(edu_type_cd));
insert into applicants values(1777,'sai','gupta','abcd@gmail.com',8976428769,'gandhi center','Bangalore','Karnataka',560047,'sai','jobstatus',17-01-2022,'Onboarding','sai',1,+91,1,1111,121);
create table applicant_jobs(appl_id int,foreign key(appl_id) references applicants(appl_id),job_id int primary key,foreign key(job_id) references jobs(job_id),foreign key(appl_status_cd) references appl_status(appl_status_cd),date_applied date,written_test_date date,interview_date date,interview2_date date);
insert into applicant_jobs values(1777,1500,1,5/02/2022,12/02/2022,15/02/2022);