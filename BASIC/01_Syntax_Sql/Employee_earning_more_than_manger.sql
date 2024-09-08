/*
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 

Write a solution to find the employees who earn more than their managers.

Return the result table in any order.

The result format is in the following example.*/
DROP TABLE IF EXISTS sql_practise_2024.dbo.Employee;
CREATE  TABLE  sql_practise_2024.dbo.Employee (
    id int,
    name nvarchar(40),
    salary int,
    managerId int
);
TRUNCATE TABLE sql_practise_2024.dbo.Employee;
INSERT INTO sql_practise_2024.dbo.Employee 
VALUES(1  , 'Joe'   , 70000  , 3 ),
(2  , 'Henry' ,80000  , 4   ),
(3  ,'Sam '  , 60000  , Null ),
(4  , 'Max '  , 90000  , Null );

SELECT e.name as Employee from sql_practise_2024.dbo.Employee e
where e.salary >(select m.salary from sql_practise_2024.dbo.Employee as m where e.managerId = m.id);

SELECT e.name as Employee from sql_practise_2024.dbo.Employee e
join sql_practise_2024.dbo.Employee as m on e.managerId = m.id
where e.salary>m.salary;