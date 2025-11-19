use northwind;

-- 1
Select ProductName from products
where UnitPrice = (select max(UnitPrice) from products);

-- 2
Select orderID, ShipName, ShipAddress from orders
where ShipVia = (select shipperID from shippers
				where CompanyName like "Federal Shipping");

-- 3
Select orderID from `order details`
where productID  = (select productID from products
					where ProductName = "Sasquatch Ale");
                    
-- 4
select LastName,FirstName from employees
where EmployeeID = (select EmployeeID from orders
					where OrderID = 10266);
                    
-- 5
select CompanyName from customers
where CustomerID = (select CustomerID from orders
					where OrderID = 10266);