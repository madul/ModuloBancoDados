create table stores (
	store_id int auto_increment,
    store_name varchar (100),
    logradouro varchar (100) not null,  
    store_number int unsigned not null, 
    complement varchar (100),
    cep int unsigned not null,
    nbh varchar(150) not null,
    city varchar (100) not null, 
    state varchar (100) not null,
    ddd int(2) unsigned not null,
    phone int unsigned not null, 
    
    primary key(store_id)
);

insert into stores
values(null, null, "Avenida Presidente Vargas", 5000, "10º andar", 20230010, "Center", "Rio de Janeiro", "RJ", 21, 33333333);