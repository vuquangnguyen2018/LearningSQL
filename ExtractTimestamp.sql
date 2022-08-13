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

---EXTRACT Distinct Month
SELECT DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment

--- EXTRACT So ngay trong tuan la thu 2 trong payment
SELECT COUNT(*) 
FROM payment
WHERE EXTRACT(dow FROM payment_date)=1

