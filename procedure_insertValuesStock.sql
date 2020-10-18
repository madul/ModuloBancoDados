drop procedure if exists insertValuesStock;
delimiter $
create procedure `insertValuesStock`()
begin
	
    declare id int default 0;
    set id = (select min(productID) from products where productID > id);
    while id is not null do 
		if ((select count(*) from stock where productID = id) = 0) then
            insert into stock (productID, quantity)
			values (id, 20);
		end if;
		set id = (select min(productID) from products where productID > id);
	end while;
end$