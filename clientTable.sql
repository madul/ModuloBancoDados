use pitangacos;

create table Clients (
	clientID int auto_increment,
    `name` varchar (150) not null,
    surname varchar (150) not null,
    cpf bigint not null unique,
    phone int,
    email varchar (150) not null,
    address varchar (500) not null,     
    
    primary key(clientID)
    );
	
insert into clients (name, surname, cpf, phone, email, address)
values ("Luciano", "Araújo", 46128845379, null,  "luaraujo@email.com", "Rua do Lago, 1333, Jd. Amaral - SP");

