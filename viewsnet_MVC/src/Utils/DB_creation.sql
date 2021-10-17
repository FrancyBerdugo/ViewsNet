CREATE SCHEMA viewsnet;
USE viewsnet;

drop table if exists peliculas;

-- TABLA DE PELICULAS
Create table peliculas
(
	pelicula_id varchar(5) primary key,
    titulo varchar(40) not null,
	pelicula_resumen varchar(4000) not null,
	pelicula_anio int (4) not null,
        pelicula_id_director int ,
	FOREIGN KEY (pelicula_id_director) REFERENCES director(director_id)
);

-- INSERCIÓN EN LA TABLA PELICULAS
insert into peliculas (pelicula_id,titulo,pelicula_resumen,pelicula_anio,pelicula_id_director) values('P0001','Los Vengadores','Pelicula de superheroes basada en Marvel Comics. Nick Fury director de SHIELD recluta a Tony Stark, Steve Rogers, Bruce Banner y Thor para forma un equipo y evitar que Loki, hermano de Thor, se apodere de la tierra','1990','1002');
insert into peliculas (pelicula_id,titulo,pelicula_resumen,pelicula_anio,pelicula_id_director) values('P0002','Interestelar','Pelicula de ciencia fición, donde la humanidad lucha por sobrevivir. La pelicula cuenta una historia de un grupo de astronautas que viajana traves de un agujero de gusano en busca de un nuevo hogar.','2014','1003');
insert into peliculas (pelicula_id,titulo,pelicula_resumen,pelicula_anio,pelicula_id_director) values('P0003','El viaje de Chihiro','Pelicula de animación japonesa. Es la historia de una niña de 12 años, quien se ve atrapada por un mundo mágico y sobrenatural, teniendo como misión buscar su libertad y la de sus padres y regresar al mundo real.','2001','1001');
insert into peliculas (pelicula_id,titulo,pelicula_resumen,pelicula_anio,pelicula_id_director) values('P0004','Parasitos','Pelicula de drama, suspenso y humor negro. Toca temas como las diferencias sociales y vulnerabilidad del espiritu humano','2019','1004');
insert into peliculas (pelicula_id,titulo,pelicula_resumen,pelicula_anio,pelicula_id_director) values('P0005','Mas alla de los sueños','Pelicula de drama, narra una historia trágica de una familia, donde el padre va en busca de sus esposa al mas allá para recuperarla.','1998','1005');

drop table if exists director;

-- TABLA DE DIRECTOR
Create table director
(
	director_id int primary key,
    director_nombre varchar(40) not null,
	director_apellido varchar(40) not null,
    director_nacionalidad varchar(40) not null
);

-- INSERCIÓN EN LA TABLA DIRECTOR
insert into director (director_id,director_nombre,director_apellido,director_nacionalidad) values ('1001','Hayo','Miyazaki','japones');
insert into director (director_id,director_nombre,director_apellido,director_nacionalidad) values ('1002','Joss','Whedon','estadounidense');
insert into director (director_id,director_nombre,director_apellido,director_nacionalidad) values ('1003','Christopher','Nolan','estadounidense');
insert into director (director_id,director_nombre,director_apellido,director_nacionalidad) values ('1004','Bong','Joon-ho','coreano');
insert into director (director_id,director_nombre,director_apellido,director_nacionalidad) values ('1005','Vincent','Ward','neozelandes');

drop table if exists series;

-- TABLA DE SERIES
Create table series
(
	series_id varchar(5) primary key,
        titulo varchar(40) not null,
	series_episodios int not null,
        series_temporadas int not null
);

-- INSERCIÓN EN LA TABLA SERIES
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0001','The walking dead','153','11 ');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0002','Viaje a las estrellas: la serie original','80','3');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0003','Glow','30','3');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0004','La casa de papel','31','4');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0005','Friends','236','10');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0006','Arrow','170','8');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0007','The big bang theory','279','12');
insert into series (series_id,titulo,series_episodios,series_temporadas) values('S0008','Vikingos','79','6'); 

drop table if exists usuarios;

-- TABLA DE USUARIOS
Create table usuarios
(
	usuarios_username varchar(20) primary key,
    usuarios_nombre varchar(40) not null,
	usuarios_apellido varchar(40) not null,
    usuarios_email varchar(40) not null,
    usuarios_celular varchar(10) not null,
    usuarios_contrasena varchar(15)not null,
    usuarios_fecha_nacimiento date not null
);

-- INSERCIÓN EN LA TABLA USUARIOS
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('lucky','Pedro','Perez','pperez@happycompany.com','3105551234','perez1234','1992-03-07');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('malopez','Maria','Lopez','malopez@gmail.com','3157894567','raul0312*','1984-10-06');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('diva','Ana','Diaz','nenadiva@yahoo.es','3102427807','123456789','1986-06-23');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('dreamer','Luis','Rojas','sr.rojas@hotmail.com','3012345678','sr.rojas','2002-02-12');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('ninja','Andres','Cruz','com.pu.ter@gmail.com','3003170210','123123','1963-08-12');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('neon','Nelson','Ruiz','nelruiz@outlook.com','3138704015','password','2003-01-01');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('rose','Claudia','Mendez','claudita_mendez0103','3178849042','titanic','1989-03-01');
insert into usuarios (usuarios_username,usuarios_nombre,usuarios_apellido,usuarios_email,usuarios_celular,usuarios_contrasena,usuarios_fecha_nacimiento) values ('green','Jorge','Rodriguez','jorger1980@gmail.com','3146706013','qqww1122','1980-11-25');

drop table if exists registro_transmisiones;

-- TABLA DE TRANSMISIONES
Create table registro_transmisiones
(
	registro_transmisiones_id int primary key,
    registro_transmisioness_username varchar(20) not null,
	registro_transmisiones_titulo varchar(100) not null,
    registro_transmisiones_fecha datetime not null,
    FOREIGN KEY (registro_transmisioness_username) REFERENCES usuarios(usuarios_username)
);

-- INSERCIÓN EN LA TABLA TRANSMISIONES
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('105','lucky','Los Vengadores','2017-10-25 20:00:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('106','lucky','Parasitos','2019-03-15 18:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('107','lucky','La casa de papel','2019-05-20 20:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('108','malopez','Los Vengadores','2018-05-20 20:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('109','malopez','La casa de papel','2020-01-20 20:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('110','diva','Interestelar','2019-05-20 20:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('111','diva','El viaje de Chihiro','2018-06-22 21:30:00');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('112','diva','The walking dead','2020-03-17 15:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('113','dreamer','The walking dead','2020-03-17 15:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('114','dreamer','Viaje a las estrellas: la serie original','2020-04-10 18:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('115','ninja','Glow','2020-02-17 20:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('116','ninja','La casa de papel','2020-02-20 16:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('117','ninja','Arrow','2020-03-27 18:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('118','rose','Friends','2020-03-20 21:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('119','green','Interestelar','2020-01-10 17:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('120','green','Parasitos','2020-02-15 20:30:20');
insert into registro_transmisiones (registro_transmisiones_id,registro_transmisioness_username,registro_transmisiones_titulo,registro_transmisiones_fecha) values ('121','green','Mas alla de los sueños','2020-03-17 18:30:20');
