/*Question: +-------------+---------+
 Column Name  Type    
+-------------+---------+
 personId     int     
 lastName     varchar 
 firstName    varchar 
+-------------+---------+
personId is the primary key (column with unique values) for this table.
This table contains information about the ID of some persons and their first and last names.

Address

+-------------+---------+
 Column Name  Type    
+-------------+---------+
 addressId    int     
 personId     int     
 city, varchar 
 state,varchar 
+-------------+---------+
addressId is the primary key (column with unique values) for this table.
Each row of this table contains information about the city and state of one person with ID = PersonId.

Write a solution to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.
*/
DROP TABLE sql_practise_2024.dbo.Person;
CREATE  TABLE  sql_practise_2024.dbo.Person (
    personId int,
    lastName nvarchar(40),
    firstName nvarchar(40)
);

TRUNCATE TABLE sql_practise_2024.dbo.Person;
INSERT INTO  sql_practise_2024.dbo.Person values(1,'Wang','Allen'),
(2,'Alice','Bob');

DROP TABLE sql_practise_2024.dbo.Address;
CREATE  TABLE  sql_practise_2024.dbo.Address (
    addressId int,
    personId int,
    city nvarchar(40),
    state nvarchar(40)
);

TRUNCATE TABLE sql_practise_2024.dbo.Address;
INSERT INTO  sql_practise_2024.dbo.Address values(1,2,'New York City','New York'),
(2,3,'Leetcode','California');


/* --- Answer to the question --*/

SELECT p.[firstName],p.[lastName],a.[city],a.[state]
FROM sql_practise_2024.dbo.Person p
LEFT JOIN sql_practise_2024.dbo.Address a 
on p.personId = a.personId; 