-- 1
select ProductID, ProductName, UnitPrice, CategoryName 
from products p inner join categories c on p.categoryID = c.categoryID;

-- 2
select ProductID, ProductName, UnitPrice, CompanyName
from products p inner join suppliers s on p.SupplierID = s.SupplierID
where UnitPrice > 75
order by ProductName;

-- 3
select ProductID, ProductName, UnitPrice, CategoryName, CompanyName
from products p 
inner join suppliers s on p.SupplierID = s.SupplierID
inner join categories c on p.categoryID = c.categoryID
order by ProductName;

-- 4
select ProductName, CategoryName 
from products p inner join categories c on p.categoryID = c.categoryID
where p.UnitPrice = (Select max(UnitPrice) from products);

-- 5 
select OrderId, shipName, shipAddress, CompanyName
from orders o inner join shippers s on o.shipVia = s.shipperID
where ShipCountry = "Germany";

-- 6 
select o.OrderId, orderDate, shipName, shipAddress
from orders o inner join `order details` od on o.orderId = od.OrderID
where ProductID = (select productId from products where productname = "Sasquatch Ale");