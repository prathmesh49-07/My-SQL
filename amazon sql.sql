use amazon;
select count(orderID) as total_order  from amazon;
select count(distinct(CustomerName)) as unique_customer from amazon;
select count(distinct(ProductName))as unique_product from amazon;
select count(distinct(Category))as unique_category from amazon;
select count(distinct (Brand)) as unique_brand from amazon;
select count(distinct(SellerID)) as unique_sellers from amazon;
select count(distinct(PaymentMethod)) as differ_pay_method from amazon;
select count(distinct(OrderStatus))as differ_order_status from amazon;
select count(distinct(city))as city_count  from amazon;
select count(distinct(State))as state_count from amazon;
select round(sum(TotalAmount),2) as total_sales_amount from amazon;
select round(avg(TotalAmount),2)as avg_order_value from amazon;
select round(min(TotalAmount),2)as min_order_amount from amazon;
select round(max(TotalAmount),2)as max_order_amount from amazon;
select sum(Quantity) as total_quantity from amazon;
select avg(Quantity)as avg_quantity from amazon;
select round(sum(Discount),2)as total_discount from amazon;
select avg(discount)as avg_discount_per_order from amazon;
select sum(Tax)as total_tax from amazon;
select sum(ShippingCost)as total_shipping_cost from amazon;
select ProductName,count(OrderID) from amazon group by ProductName;
select ProductName ,count(quantity)from amazon group by ProductName;
select ProductName, round(sum(TotalAmount),2)as total_sales_amount  from amazon group by ProductName;
select ProductName , sum(TotalAmount)as total_amount  from amazon group by ProductName order by total_amount desc limit 1;
select ProductName,sum(Quantity)as total_quantity from amazon group by ProductName order by total_quantity desc limit 1;
use amazon;
select ProductName,avg(UnitPrice)as avg_unit_price from amazon group by ProductName;
select ProductName,avg(Discount) as avg_discount from amazon group by ProductName order by avg_discount desc  ;
select ProductName,sum(Discount)as total_discount from amazon group by ProductName order by total_discount desc ;
select Category,count(distinct(ProductName) )as product_count  from amazon group by Category;
select Category,avg(TotalAmount)as avg_selling_price  from amazon group by Category;
select Category,sum(TotalAmount)as total_sales_amount from amazon group by Category;
select Category,sum(Quantity)as total_quantity_sold from amazon group by Category;
select category ,sum(TotalAmount)as _total_sales from amazon group by category order by _total_sales desc limit 1;
select category ,sum(quantity)as total_quantity_sold from amazon group by category order by total_quantity_sold desc limit 1;
select category ,avg(TotalAmount)as avg_order_value from amazon group by category;
select category ,sum(Discount)as total_discount from amazon group by category;
select brand,sum(TotalAmount)as total_sales_amount from amazon group by brand;
select brand ,sum(TotalAmount)as total_sales from amazon group by brand order by total_sales desc limit 1;
select brand ,count(Quantity)as total_quantity from amazon group by brand;
select brand ,count(ProductName)as product_count from amazon group by brand;
select CustomerName,count(OrderID)as order_count from amazon group by CustomerName;
select CustomerName,sum(TotalAmount)as total_amount from amazon group by CustomerName;
select CustomerName,sum(TotalAmount)as total_amount from amazon group by CustomerName
order by total_amount desc limit 1;
select CustomerName,avg(TotalAmount)as avg_order_value from amazon group by CustomerName;
select City,sum(TotalAmount) as total_sales from amazon group by City;
select city ,sum(TotalAmount)as total_sales from amazon group by city order by total_sales desc ;
select State,sum(TotalAmount)as total_sales from amazon group by State;
select state ,sum(TotalAmount)as total_sales from amazon group by state order by total_sales desc;
select PaymentMethod,sum(TotalAmount)as total_sales from amazon group by PaymentMethod;
select OrderStatus,count(OrderID)as total_quantity from amazon group by OrderStatus;




