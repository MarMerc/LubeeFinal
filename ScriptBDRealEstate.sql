--drop table INMUEBLE;
--drop database DBREALESTATE


-- Crea la BD: DBREALESTATE 
CREATE DATABASE DBREALESTATE

USE DBREALESTATE
--
-- Table structure for table PROPIEDAD
--
create table INMUEBLE(
	IdInmueble int primary key identity,
	TipoInmueble varchar(50) NOT NULL,
	TipoOperación varchar(50) NOT NULL,
	Descripción varchar(400) NOT NULL,
	Ambientes int,
	M2 int NOT NULL, 
	Antiguedad int,
	LatUbicación varchar(15),
	LongUbicación varchar(15)
)
--
-- Table structure for table IMAGEN
--
create table IMAGEN(
	IdImagen int primary key identity,
	UbicacionImg varchar(400)
);
--
-- Table structure for table IMAGEN
--
create table INMUEBLEIMG(
	IdImgInmueble int primary key identity,
	IdInmueble int Not Null,
	IdImagen int Not Null,
	Constraint fk_IdImagen foreign key (IdImagen) references IMAGEN(IdImagen),
	Constraint fk_IdInmueble foreign key (IdInmueble) references INMUEBLE(IdInmueble)
)
-- Departamento
INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Departamento','Alquiler','IMPRESIONANTE Departamento en Venta 2D c/Cochera - Barrio Norte - Virgen de la Merced al 600 San Miguel de Tucumán',3,87,19,'-26.826562', '-65.160665');
--
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/ce2cdf78-7654-4bcf-aa26-6278c8e6a2a8/360x200/7c7f79cd-d3c8-40ab-a975-084cf582b528.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/ce2cdf78-7654-4bcf-aa26-6278c8e6a2a8/360x200/f988b8ce-060f-4ae9-8664-7e3fd39df09c.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/ce2cdf78-7654-4bcf-aa26-6278c8e6a2a8/360x200/d38b7637-318d-4e83-89c5-505db7345a38.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(1,1);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(1,2);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(1,3);

--
INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Departamento','Alquiler','EXCLUSIVO DEPARTAMENTO EN DUPLEX EN EMBLEMATICO EDIFICIO KAVANAGH, RETIRO, BUENOS AIRES.PLAZA SAN MARTIN - RETIRO - BUENOS AIRES',5,360,90,'-26.826562', '-65.160665');
--
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_1ae936078bd0470bacfc94d53637f101.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_6ca4cda2bc43478da3062f83037b4c3b.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/b1ecf829-82b2-4ea9-a53c-b592921b4259/264x144/l_f8c7285ecb6345e68b45db900f293c65.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(2,4);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(2,5);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(2,6);

--
INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Departamento','Venta','Excelente 2 ambientes más escritorio en piso 8 reciclado totalmente a nuevo, lleno de sol y luz con balcón corrido a contrafrente abierto.',2,360,40,'-26.826562', '-65.160665');

INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/6f36cb0f-5cce-4e49-8ae2-6ed9a0d90937/264x144/f1359976-bc6b-4d53-b2d0-519618183b83.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/6f36cb0f-5cce-4e49-8ae2-6ed9a0d90937/264x144/573ab5d3-e071-43f8-8b57-87191dfacf6c.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/6f36cb0f-5cce-4e49-8ae2-6ed9a0d90937/264x144/a7ac52ef-1969-48a0-824b-9d4659ac97dd.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(3,7);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(3,8);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(3,9);

-- Casa
INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Casa','Alquiler','Venta de imponente casa en bloque en Barrio Parque.Edificio de ladrillo a la vista ubicado en una de las mejores esquinas de Buenos Aires.La propiedad tiene una superficie total de 2056.11 m2, y una superficie descubierta de 507,13 m2 dividida en tres unidades con amenities en el último piso.',5,1548,30,'-26.826562', '-65.160665');
--
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/264x144/f6e81d2c-2fe1-4958-8f86-957922d2c4af.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/AUTOx440/162fc3ee-d053-4630-81fb-74c146bb3b4a.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/e94cb466-163a-4869-b7a0-5c5f67a37393/AUTOx440/56a8c71d-df5e-4c48-8918-572573bd0b9c.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(4,10);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(4,11);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(4,12);

--

INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Casa','Venta',' A ESTRENAR TURÍSTICOS KM 12 SE VENDE COMPLEJO CON 5 DEPARTAMENTOS para turismo en Nahuel Malal, a una cuadra de Bustillo (km. 12, Bahía Serena, Bariloche)',6,716,1,'-26.826562', '-65.160665');
--
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/25512b63-4de7-4fd4-b706-124f6c8b6824/264x144/0a48d8c9-35ce-48aa-a1d8-87dd1ff05286.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/25512b63-4de7-4fd4-b706-124f6c8b6824/264x144/5a59ba43-299c-4029-8f1b-091d00e0b23c.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/25512b63-4de7-4fd4-b706-124f6c8b6824/264x144/30a8cf41-dc53-475d-8ea5-020ba725cf88.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(5,13);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(6,14);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(7,15);

--

INSERT INTO INMUEBLE(TipoInmueble,TipoOperación,Descripción,Ambientes,M2,Antiguedad,LatUbicación,LongUbicación)
VALUES('Terreno','Venta','https://d1acdg20u0pmxj.cloudfront.net/listings/df650c3a-8a98-4f67-9d16-fa4489fbd15c/360x200/a61f2727-7104-4866-ac26-ed33ee805e97.webp?',0,152960,0,'-26.826562', '-65.160665');
--
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://www.remax.com.ar/listings/venta-parcelas-parque-logististico-r-n-9');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/df650c3a-8a98-4f67-9d16-fa4489fbd15c/360x200/87d73f3c-4c90-4162-bdbc-cf28dedf92cd.webp?');
INSERT INTO IMAGEN(UbicacionImg)
VALUES('https://d1acdg20u0pmxj.cloudfront.net/listings/df650c3a-8a98-4f67-9d16-fa4489fbd15c/360x200/a61f2727-7104-4866-ac26-ed33ee805e97.webp?');

INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(6,16);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(6,17);
INSERT INTO INMUEBLEIMG(IdInmueble,IdImagen)
VALUES(6,18);



--drop table IMAGEN

select * from IMAGEN
select * from INMUEBLE
select * from INMUEBLEIMG