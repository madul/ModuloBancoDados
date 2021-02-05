use pitangacos;

create table Clients (
	clientID 		int auto_increment,
    `name` 		varchar (150) not null,
    surname 	varchar(150) not null, 
    email 		varchar(255) not null unique, #login
    `password`	varchar(255) not null, 
    
    DoB			date,
    cpf			bigint unsigned not null unique,
    mobile		int unsigned, 
    address		varchar (255),
    city		varchar (150),
	State		varchar (150),
	zipCode		int unsigned,
	accountCreation	 timestamp not null default current_timestamp,
	lastAccess	timestamp not null default current_timestamp on update current_timestamp,   
    
    primary key(clientID)
    );

delimiter $
create trigger trg_createUserClient after insert on clients for each row
begin
	insert into users1 (email, password)
		values (new.email, new.password);
end$

#essa senha é 123
INSERT INTO `pitangacos`.`clients` (`name`, `surname`, `email`, `password`, `DoB`, `cpf`, `mobile`, `address`, `city`, `State`, `zipCode`) 
VALUES ('Paola', 'Junqueira', 'paola2@email.com', '$08$HhX1ihR/I0Oqzf.WsdDNOeoN/80fpdYZZH5GLDe7RXpD4rMD2Frmy', '1992-06-17', '84463075', '1196325237', 'Rua das Mangabas', 'São Bernardo', 'SP', '65539878');
