-- 1. Crear y usar la base de datos
create database gym_U3;
use gym_U3;

-- 2. Tabla de usuarios
create table usergym (
    id_user int unique primary key auto_increment,
    name varchar(50) not null,
    lastnameP varchar(50) not null,
    email varchar(100) unique,
    location enum('OTAY','FUNDADORES','PLAYAS') not null 
);

-- 3. Tabla de membresías
create table Membership (
    id_membership int unique primary key auto_increment,
    membership varchar(10) not null 
);

-- 4. Datos de prueba
insert into usergym (name, lastnameP, email, location) values
('Juan', 'Perez', 'juan@email.com', 'FUNDADORES'),
('Maria', 'Lopez', 'maria@email.com', 'PLAYAS');

insert into Membership (membership) values
('Mensual'),
('Anual'),
('Semanal');

INSERT INTO usergym (name, lastnameP, email, location)
VALUES ('Carlos', 'Ruiz', 'carlos@email.com', 'OTAY');

-- 5. Verificar
select * from usergym;
select * from Membership;

-- 6. Actualizar
UPDATE usergym
SET name = 'Carlos Alberto'
WHERE id_user = 3;