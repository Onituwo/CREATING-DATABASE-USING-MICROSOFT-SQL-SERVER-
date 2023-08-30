(1)--- TO CREATE A DATABASE FOR JADES EMPLOYEE'S---
	
	create Database JADE_EMPLOYEE_DATA;

(2)--- TO CREATE TABLE FOR THAT WILL CONTAINS THE DATA OF THE EMPLOYEE'S

	create table JADE_EmployeeDATA(Employee_ID int,Firstname varchar(20),Lastname varchar(20),Age int,Title varchar(10),Gender varchar(5),Location varchar(50));


	insert into JADE_EmployeeDATA 
	values
		(001, 'Abdulraheem','faaiz',30,'Single','M','Ilorin'),
		(002,'Jimoh','Nurudeen',40,'Married','M','Lagos'),
		(003,'Tolorunju','Hameedah',25,'Single','F','Ondo'),
		(004,'Abdulazeez','AbdulAfeez',42,'Married','M','Osun'),
		(005,'Balogun','Abdulmutolib',40,'Married','M','Lagos'),
		(006,'Jimoh','Aisha',31,'Married','F','Offa'),
		(007,'Adam','Fatimah',25,'Single','F','Abuja'),
		(008,'Abdulhamid','Hamid',28,'Single','M','Ilorin'),
		(009,'Yusuf','Alarape',26,'Single','F','Osun'),
		(010,'Muhammed','Salamah',23,'Single','F','Kano'),
		(011,'Gatta','Mukhtar',24,'Single','M','Bauchi'),
		(012,'John','Olarewaju',45,'Married','M','Katsina'),
		(013,'Faith','Tosin',52,'Married','F','Jos'),
		(014,'Yvonne','Salako',44,'Married','F','Delta'),
		(015,'Abdullahi','Abdulrahman',33,'Single','M','Kano'),
		(016,'Ahmed','Azeez',39,'Single','M','Sokoto'),
		(017,'Olarewaju','Bode',29,'Married','M','Ekiti'),
		(018,'Bukola','John',28,'Married','F','Oyo'),
		(019,'Caroline','jack',35,'Married','F','Enugun'),
		(020,'Ramsey','Noah',42,'Married','F','Owerri');


(3)---TO SEE IF ALL THE INFORMATIONS INSIDE THE TABLE ARE CORRECT---
	
	select * from JADE_EMPLOYEEDATA;

(4)---CREATE JADE EMPLOYEE SALARY TABLE---

	create table JADE_EMPLOYEE_SALARY(Employee_ID int,Jobtitle varchar(20),Salary int, Jobtype varchar(10));

	insert into JADE_EMPLOYEE_SALARY
	values (001,'Manager',300000,'FT'),
		   (002,'Ass Manager',250000,'FT'),
		   (003,'Secretary',150000,'FT'),
		   (004,'Accountant',150000,'FT'),
		   (005,'Sales Rep',100000,'FT'),
		   (006,'Salesman',50000,'FT'),
		   (007,'Salesman',50000,'FT'),
		   (008,'Salesman',40000,'PT'),
		   (009,'Salesman',40000,'PT'),
		   (010,'Salesman',50000,'FT'),
		   (011,'Salesman',50000,'FT'),
		   (012,'Salesman',40000,'PT'),
		   (013,'Salesman',50000,'FT'),
		   (014,'Salesman',50000,'FT'),
		   (015,'Salesman',50000,'FT'),
		   (016,'Security',40000,'FT'),
		   (017,'Cleaner',30000,'FT'),
		   (018,'Cleaner',30000,'FT'),
		   (019,'cleaner',25000,'PT'),
		   (020,'Security',40000,'FT');

   
   ---TAKE A LOOK AT THE TABLE JUST CREATED---
		  
		  select * from JADE_EMPLOYEE_SALARY;

		  

(5)---WHAT IS THE TOTAL NUMBER OF MALE AND FEMALE EMPLOYEE---

	    select Gender,count(Gender) as num_gend from JADE_EmployeeDATA
	    group by Gender; 


(6)---WHO IS THE HIGHEST EARNERS AMONGST THE EMPLOYEE---

    
	   select top 1 JADE_EMPLOYEEDATA.Employee_ID,firstname,lastname,max(salary) as hig_earner 
       from JADE_EmployeeDATA
       inner join JADE_EMPLOYEE_SALARY
       on JADE_EMPLOYEEDATA.Employee_ID=JADE_Employee_Salary.Employee_ID
	   group by JADE_EMPLOYEEDATA.Employee_ID,firstname,lastname;


(7)---CALCULATE THE RAISE IN THE EMPLOYEE SALARIES OF THE MANAGER TO TIMES FIVE(5) AND THE SALESMENS TO TIMES(3) AND OTHERS TIMES TWO()2---
    
   
   select Employee_ID, jobtitle,

(Case
	When Jobtitle = 'Manager' then (Salary + (Salary*5))
	When jobtitle = 'Salesman' then salary + (salary*3)
	Else salary + (salary*2)
	End) as New_salary
from JADE_EMPLOYEE_SALARY; 


(8)---DISPLAY HOW MANY EMPLOYEE PER EACH JOBTITLE---

      select count(Jobtitle) as Tot_JobT,jobtitle from JADE_EMPLOYEE_SALARY
      group by Jobtitle
   order by Tot_JobT desc; 

(9)---UPDATE TOLORUNJU INTO MARRIED---
update  JADE_EmployeeDATA
	set Title = 'Married'
	where Employee_ID = 003;

	
(10)---DISPLAY ALL THE EMPLOYEE'S FIRSTNAME AND LASTNAME WRITING AS FULLNAME---
    
	 select concat(lower(firstname),' ',upper(lastname)) as fullname 
	 from JADE_EmployeeDATA;











