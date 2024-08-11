CREATE SCHEMA IF NOT EXISTS DataLemur;

CREATE TABLE IF NOT EXISTS DataLemur.User(
    user_id INTEGER,
    spend DECIMAL,
    transaction_date TIMESTAMP
);

INSERT INTO DataLemur.User
VALUES(111,100.50,'01/08/2022 12:00:00'),
(111,	55.00,	'01/10/2022 12:00:00'),
(121,	36.00,	'01/18/2022 12:00:00'),
(145,	24.99,	'01/26/2022 12:00:00'),
(111,	89.60,	'02/05/2022 12:00:00');

with third_transaction AS
(select *, RANK() OVER(PARTITION BY user_id  order by transaction_date) as rnk
from DataLemur.User)

select user_id, spend,transaction_date from third_transaction where rnk =3;

