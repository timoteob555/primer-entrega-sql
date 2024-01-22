create schema uber; 
use uber;

-- creacion de tablas
create table conductor (
	id_conductor int primary key auto_increment ,
	documento_identidad bigint not null ,
    nombre_apellido varchar(50) not null , 
    fecha_de_nacimiento date ,
    mail varchar(30)
    ); 

create table usuario (
	id_usuario int primary key auto_increment ,
	documento_identidad bigint not null ,
    nombre_apellido varchar(50) not null , 
    fecha_de_nacimiento date ,
    mail varchar(30)
    ); 
    
create table vehiculo (	
	id_vehiculo int primary key auto_increment , 
    id_conductor int ,
    modelo varchar(20) ,
    patente varchar(10) not null unique,
    foreign key (id_conductor) references conductor(id_conductor)
    );
    
    
create table viajes (
	id_viajes int primary key auto_increment,
    id_conductor int ,
    id_usuario int  ,
    fecha_hora date ,
    tarifa varchar(10) ,
    foreign key (id_conductor) references conductor(id_conductor) , 
    foreign key (id_usuario) references usuario(id_usuario)
    );

create table seguro (
		id_seguro int primary key auto_increment,
        id_conductor int ,
        id_vehiculo int,
        patente varchar(10) not null ,
        foreign key (patente) references vehiculo(patente),
        foreign key (id_conductor) references conductor(id_conductor) , 
        foreign key (id_vehiculo) references vehiculo(id_vehiculo)
        );
    
    
    
	