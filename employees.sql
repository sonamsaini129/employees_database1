select Database();
use sakila;
select * from payment;
select month(payment_date), count(customer_id), max(rental_id),
min(rental_id), avg(amount) from payment
group by month(payment_date);
select * from actor;
select * from payment;
select payment_id,month(payment_date) from payment
 where payment_id=5;
 select * from payment where payment_id=(select month(payment_date) from payment
 where payment_id=5);
 select rental_id from payment where rental_id < rental_id of 
 payment_id=7;
 select * from payment where payment_id=7 and amount<5;
 select * from payment where rental_id<(select * from 
 payment where payment_id=7 and amount<5);
 select count(payment_id) from payment where amount =5.99;
 select amount,count(payment_id) from payment where
 payment_id >(select payment_id from 
 payment where amount =5.99);
 select database();
 use employees;
 select * from employees;
 select emp_no, birth_date,concat(first_name,' ',last_name) 
 from employees where birth_date > 
 (SELECT max(birth_date) FROM employees 
WHERE emp_no BETWEEN 10003 AND 10006);
select * from titles;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name,
 e.birth_date FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE YEAR(t.from_date) = 1986;


select emp_no, title from titles where 
title ='Senior Engineer';



  