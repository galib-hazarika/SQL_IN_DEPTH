/*
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| email       | varchar |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains an email. The emails will not contain uppercase letters.
 

Write a solution to report all the duplicate emails. Note that it's guaranteed that the email field is not NULL.

Return the result table in any order.
*/

DROP TABLE IF EXISTS sql_practise_2024.dbo.Person1;
CREATE  TABLE  sql_practise_2024.dbo.Person1(
    id int,
    email nvarchar(100)
);
TRUNCATE TABLE sql_practise_2024.dbo.Person1;
INSERT INTO sql_practise_2024.dbo.Person1
VALUES(1  , 'a@b.com'),
(2  ,'c@d.com'),
(3  , 'a@b.com' );

select email  from sql_practise_2024.dbo.Person1 group by email
having count(email) >1