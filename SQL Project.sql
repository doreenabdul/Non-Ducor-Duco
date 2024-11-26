1:
select COUNT(member_id) as member_no,membership_level
from "Members"
group by membership_level

select COUNT(member_id) as total
from "Members"




2,
select line,price
from "Products"
order by price desc
limit 5

select AVG(price), line
from "Products"
where line ilike '%ocly'
group by line



3,
select sale_date,product_id,sale_id, price
from "Q2_Sales" 
inner join "Products"
on product_code = product_id
where extract ('year'from sale_date)=2023

Select sum(price*sale_id) as Revenue
from "Q2_Sales" a
inner join "Products" b
on a.product_id = b.product_code

select A.member_id,firstname,surname,sum(price*sale_id) as revenue
From "Members"A
inner join "Q2_Sales" B
ON A.member_id = B.member_id
INNER JOIN "Products" D
ON B.product_id = D.product_code
WHERE EXTRACT("year"from sale_date) = 2023
GROUP BY A.member_id
ORDER BY REVENUE DESC


select sale_date,product_id,sale_id, price
from "Q3_Sales" 
inner join "Products"
on product_code = product_id
where extract ('year'from sale_date)=2023

Select sum(price*sale_id) as Revenue
from "Q3_Sales" a
inner join "Products" b
on a.product_id = b.product_code

select A.member_id,firstname,surname,sum(price*sale_id) as revenue
From "Members"A
inner join "Q3_Sales" B
ON A.member_id = B.member_id
INNER JOIN "Products" D
ON B.product_id = D.product_code
WHERE EXTRACT("year"from sale_date) = 2023
GROUP BY A.member_id
ORDER BY REVENUE DESC

4.
select count(sale_id) , a.member_id,firstname,surname
from "Q2_Sales"a
inner join "Members"b
on a.member_id =b.member_id
group by a.member_id,firstname,surname
order by COUNT(sale_id) DESC

select count(sale_id) , a.member_id,firstname,surname
from "Q3_Sales"a
inner join "Members"b
on a.member_id =b.member_id
group by a.member_id,firstname,surname
order by COUNT(sale_id) DESC

5:
Select state,count(sale_id)deliveries,a.transaction_id
from "Delivery"a
inner join "Q2_Sales"b
on a.transaction_id = b.transaction_id
where extract('month' from sale_date) = 07
group by a.transaction_id,b.sale_id
order by count(a.transaction_id)

Select state, a.transaction_id,count(sale_id)deliveries
from "Delivery"a
inner join "Q3_Sales"b
on a.transaction_id = b.transaction_id
where extract('month' from sale_date) = 07
group by a.transaction_id,b.sale_id
order by count(a.transaction_id)

select state,count(b.sale_id)total_delivery
from "Delivery"a
inner join "Q2_Sales"b
on a.transaction_id = b.transaction_id
Where extract('month' from sale_date) = 07
group by state
order by total_delivery DESC



6:
select a.product_code,price,line
from "Products"a
inner join "Q2_Sales"b
on a.product_code = b.product_id

select a.product_code,price,line
from "Products"a
inner join "Q2_Sales"b
on a.product_code = b.product_id
where sale_id is null

7: 
select product_code, category
from "Products"
where category ilike '%electronics'

