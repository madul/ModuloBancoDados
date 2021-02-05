use pitangacos;

create table Orders (
	orderID 	int auto_increment,
    clientID 	int not null,
    totalValue 	decimal(6.2) not null default 0.00,
    address		varchar (255) not null,
    city		varchar (150) not null,
	State		varchar (150) not null,
	zipCode		varchar(8) not null,
    orderDate 	timestamp not null default current_timestamp, 
    
    primary key (orderID),
    foreign key (clientID) references clients(clientID)
    );

insert into orders (clientID)
values (1);
/*
DELIMITER $
CREATE DEFINER=`root`@`localhost` 
	TRIGGER `trg_totalValue` BEFORE INSERT ON `orders` FOR EACH ROW 
	begin
		set new.totalValue = new.priceUnit * new.amount;
	End$
*/
