
# 1) — Which product line sells the most - Top 5 ?

SELECT SUM(quantityOrdered) as total_ordered, products.productCode, products.productName,products.productLine
FROM classicmodels.products
JOIN classicmodels.orderdetails
ON classicmodels.products. productCode = classicmodels.orderdetails. productCode 
group by products.productCode order by SUM(quantityOrdered) desc limit 5 ;

# 2)Total quantity of stocks available

Select sum(quantityInStock) 
from products;

# 3) Total number of employees 

select count(distinct(employeeNumber)) 
from employees;

# 5) Total sales 

SELECT SUM(quantityOrdered * priceEach) as sales 
from orderdetails;

# 6)Total customers

select count(customerNumber) 
from customers;

# 7) Find how many orders have been shipped

select count(*) 
from orders 
where status like "shipped";

#8) Find how many orders are on hold

select count(*) 
from orders 
where status like "on hold";

# 9) Find how many orders are cancelled

select count(*) 
from orders 
where status like "cancelled";

# 10) Highest payments made by customers

select customerNumber,amount as "high" 
from payments 
where amount > 40000 limit 10;
