-- tach NAM
SELECT EXTRACT(YEAR FROM payment_date)
FROM payment;
-- tach Thang
SELECT EXTRACT(MONTH FROM payment_date)
FROM payment;
-- tach Quy
SELECT EXTRACT(QUARTER FROM payment_date)
FROM payment;
-- tach NGAY
SELECT EXTRACT(DAY FROM payment_date)
FROM payment;

-- CHUYEN DATE -> STRING
SELECT TO_CHAR(payment_date,'dd-MM-YYYY') AS payment_date
FROM payment