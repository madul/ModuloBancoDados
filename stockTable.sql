create table Stock (
	stockID int auto_increment,
    productID int unique not null,
    quantity int unsigned, 
    lastUpdate timestamp not null default current_timestamp
		on update current_timestamp,
    primary key(stockID),
    foreign key(productID)  references products(productID)
    );
    
insert into stock (productID, quantity)
	values (1, 20);
        
call insertValuesStock();