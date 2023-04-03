use LittleLemonDB;
create view OrderView as select OrderID, totalCost, quantity from Orders;
select * from OrderView;