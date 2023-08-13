/*

select COUNT(*) 'Number of Customers', max(Sales) 'Max Sales', min(Sales) 'Min Sales',
        avg(Sales) 'Average Sales', sum(Sales) 'Total Sales'
from Customers

*/


select city, sum(sales) Sales
from Customers
group by city
having sum(sales) > 600000
order by sales