-- Mysql  Assignment 7

use  fact_table;

alter table person add column DOB date ;

select * from person;

UPDATE Person  SET DOB = '2000-06-25'  WHERE ID = 1;
UPDATE Person  SET DOB = '1856-07-26'  WHERE ID = 2;
UPDATE Person  SET DOB = '2001-11-08'  WHERE ID = 3;
UPDATE Person  SET DOB = '1992-05-19'  WHERE ID = 4;
UPDATE Person  SET DOB = '1985-09-30'  WHERE ID = 5;
UPDATE Person  SET DOB = '2003-06-14'  WHERE ID = 6;
UPDATE Person  SET DOB = '1998-12-03'  WHERE ID = 7;
UPDATE Person  SET DOB = '1990-02-22'  WHERE ID = 8;
UPDATE Person  SET DOB = '2005-08-07'  WHERE ID = 9;
UPDATE Person  SET DOB = '1996-04-28'  WHERE ID = 10;
UPDATE Person  SET DOB = '1950-07-12'  WHERE ID = 11;
UPDATE Person  SET DOB = '2012-08-04'  WHERE ID = 12;

delimiter ##
create function calculated_age (DOB date)
returns int 
deterministic 
begin
return timestampdiff(year, dob, curdate());
end ## 
delimiter ;

select fname,lname,DOB,calculated_age(DOB) as current_age from person ;

select country_name, char_length (country_name) as "char length" from country ;
select country_name, left (country_name,3) as "extracted 3" from country ;
select country_name, upper (country_name) as "upper case" from country ;
select country_name, lower (country_name) as "lower case" from country ;


#FINISH :)