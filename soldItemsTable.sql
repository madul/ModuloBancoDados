create table soldItems(
	sold_itemsID int auto_increment,
    productID int not null,
    valueItem decimal(6,2) not null,
    quantity int unsigned not null,
    orderID int not null,
    
    primary key(sold_itemsID),
    foreign key (productID) references products(productID),
    foreign key (orderID) references orders(orderID) 
		on delete cascade,
	index (productID, orderID)
    );
    
insert into soldItems (productID, valueItem, quantity, orderID)
		values (1, 22.90, 1, 1);
        
insert into soldItems (productID, valueItem, quantity, orderID)
		values (4, 19.90, 2, 1),
				(7, 79.90, 1, 1);
        

delimiter $
create trigger trg_alterStock after insert on soldItems for each row
begin
	update stock 
		set stock.quantity = stock.quantity - new.quantity 
        where stock.productID = new.productID;
end$

delimiter $
create trigger trg_totalValueOrder after insert on soldItems for each row
begin
	update orders 
		set orders.totalValue = orders.totalValue + new.valueItem * new.quantity
        where orders.orderID = new.orderID;
end$