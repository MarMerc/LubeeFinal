-- Crear la base de datos
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DBREALESTATE')
BEGIN
    CREATE DATABASE DBREALESTATE;
    PRINT 'Base de datos: DBREALESTATE fue creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La base de datos DBREALESTATE ya existe.';
END
GO

-- Usar la base de datos
USE DBREALESTATE;
GO

-- Crear la tabla INMUEBLE
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'INMUEBLE')
BEGIN
    CREATE TABLE INMUEBLE(
	IdInmueble int primary key identity,
	TipoInmueble varchar(50) NOT NULL,
	TipoOperación varchar(50) NOT NULL,
	Descripción varchar(400) NOT NULL,
	Ambientes int,
	M2 int NOT NULL, 
	Antiguedad int,
	LatUbicación varchar(15),
	LongUbicación varchar(15)
);
    PRINT 'Tabla INMUEBLE creada correctamente.';
END
ELSE
BEGIN
    PRINT 'La tabla INMUEBLE ya existe.';
END
GO

-- Crear la tabla INMUEBLE
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'IMAGEN')
BEGIN
    CREATE TABLE IMAGEN(
	IdImagen int primary key identity,
	UbicacionImg varchar(400),
	InmuebleId int  FOREIGN KEY REFERENCES INMUEBLE(IdInmueble)
);

GO

-- Insertar datos en la tabla Inmuebles
INSERT INTO INMUEBLE (TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación) VALUES
('Departamento','Alquiler','EXCLUSIVO DEPARTAMENTO EN DUPLEX EN EMBLEMATICO EDIFICIO KAVANAGH, RETIRO, BUENOS AIRES.PLAZA SAN MARTIN - RETIRO - BUENOS AIRES',5,360,90,'-26.826562','-65.160665'),
('Casa','Alquiler','Venta de imponente casa en bloque en Barrio Parque.Edificio de ladrillo a la vista ubicado en una de las mejores esquinas de Buenos Aires.La propiedad tiene una superficie total de 2056.11 m2, y una superficie descubierta de 507,13 m2 dividida en tres unidades con amenities en el último piso.',5,1548,30,'-26.826562', '-65.160665'),
('Departamento','Venta','EXCLUSIVO DEPARTAMENTO EN DUPLEX EN EMBLEMATICO EDIFICIO KAVANAGH, RETIRO, BUENOS AIRES.PLAZA SAN MARTIN - RETIRO - BUENOS AIRES',5,360,90,'-26.826562','-65.160665'),
('Casa','Venta','Venta de imponente casa en bloque en Barrio Parque.Edificio de ladrillo a la vista ubicado en una de las mejores esquinas de Buenos Aires.La propiedad tiene una superficie total de 2056.11 m2, y una superficie descubierta de 507,13 m2 dividida en tres unidades con amenities en el último piso.',5,1548,30,'-26.826562', '-65.160665')

GO

-- Insertar datos en la tabla Imagenes

INSERT INTO IMAGEN(UbicacionImg,InmuebleId)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/264x144/f6e81d2c-2fe1-4958-8f86-957922d2c4af.webp?',1);

INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/AUTOx440/162fc3ee-d053-4630-81fb-74c146bb3b4a.webp?',1);
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/AUTOx440/56a8c71d-df5e-4c48-8918-572573bd0b9c.webp?',1);
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_1ae936078bd0470bacfc94d53637f101.webp?', 2);
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_6ca4cda2bc43478da3062f83037b4c3b.webp?', 2);
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_f8c7285ecb6345e68b45db900f293c65.webp?', 2);


GO