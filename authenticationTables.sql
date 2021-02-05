use pitangacos;

create table users1 (
	userID int auto_increment,
    email varchar (50) not null,
    password varchar (100) not null,     
	role varchar(60) not null default 'CLIENT',	
    primary key(userID)
    );

create table roles (
	roleID int auto_increment,
    name varchar(60) not null,
    
    primary key (roleID)
);

insert into roles (name)
values ("adm"), ("client");

create table user_role (
	userID int, 
    roleID int, 
    
    primary key (userID, roleID),
    foreign key (userID) references users1 (userID),
    foreign key (roleID) references roles (roleID)
)

