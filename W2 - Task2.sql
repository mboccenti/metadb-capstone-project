use LittleLemonDB;
select c.customerID, concat(c.first_name,' ',c.last_name) as FullName, o.OrderID, o.totalCost, m.Name, mi.CourseName, mi.StarterName 
from customers as c inner join orders as o on c.customerID=o.customerID 
inner join Menus as m on o.MenuID=m.MenuID 
inner join MenuContent as mc on m.MenuID=mc.MenuID 
inner join MenuItems as mi on mc.MenuItemID=mi.MenuItemID 
where o.TotalCost>150;