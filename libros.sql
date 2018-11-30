/*Nombre: Erixander Garcia*/
/*Matricula: 14-EIIT-1-044*/
/*Seccion: 0541*/
/* Creacion de las tablas que contendran los datos registrados */
CREATE TABLE Autores (
        id_autor VARCHAR(12) NOT NULL,
        apellido VARCHAR(16) NOT NULL,
        nombre VARCHAR(16) NOT NULL,
        telefono VARCHAR(12) NOT NULL,
        direccion VARCHAR(50) NOT NULL,
        ciudad VARCHAR(20) NOT NULL,
        estado VARCHAR(2) NOT NULL,
        pais VARCHAR(3) NOT NULL,
        cod_postal NUMERIC(5) NOT NULL,
        CONSTRAINT PK_ID_AUTORES PRIMARY KEY (id_autor)
);

CREATE TABLE Publicadores (
        id_pub NUMERIC(4) NOT NULL,
        nombre_pub VARCHAR(30) NOT NULL,
        ciudad VARCHAR(15),
        estado VARCHAR(2),
        CONSTRAINT PK_ID_PUB PRIMARY KEY (id_pub)

);

CREATE TABLE Titulos (
        id_titulo VARCHAR(6) NOT NULL,
        titulo VARCHAR(70) NOT NULL,
        tipo VARCHAR(15) NOT NULL,
        id_pub NUMERIC(4) NOT NULL,
        precio NUMERIC(5,2) NOT NULL,
        avance NUMERIC(6) NOT NULL,
        total_ventas NUMERIC(6) NOT NULL,
        notas VARCHAR(200) NOT NULL,
        fecha_pub DATE,
        contrato VARCHAR(12) NOT NULL,
        CONSTRAINT PK_ID_TITULOS PRIMARY KEY(id_titulo),
		CONSTRAINT FK_TIUTLO FOREIGN KEY (contrato) REFERENCES Autores (id_autor)
);

/*CONTENIDO DE LAS TABLAS */

/*****************************************TABLA AUTORES*********************************************************************/
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('172-32-1176', 'White', 'Jhonson', '408496-7223', '10932 Bigge Rd.', 'Melon Park', 'CA', 'USA', 94025);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('213-46-8915', 'Green', 'Marjorie', '415986-7020', '309 63rd St. #411', 'Oakland', 'CA', 'USA', 94025);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('238-95-7766', 'Carson', 'Cheryl', '415548-7723', '589 Darwin Ln.', 'Berkeley', 'CA', 'USA', 94618);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('267-41-2394', 'OLeary', 'Michael', '408286-2428', '22 Cleveland Av. #14', 'San Jose', 'CA', 'USA', 94705);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('274-80-9391', 'Straight', 'Dick', '415834-2919', '5420 College Av.', 'Oakland', 'CA', 'USA', 95128);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('341-22-1728', 'Smith', 'Meander', '9138430462', '10 Mississippi Dr.', 'Lawrence', 'KS', 'USA', 94609);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('409-56-7008', 'Bennet', 'Abraham', '415585-4620', '6223 Bateman St.', 'Berkeley', 'CA', 'USA', 66044);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('427-17-2319', 'Dull', 'Ann', '615297-2723', '3410 Blonde St.', 'Palo Alto', 'CA', 'USA', 94705);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('472-27-2349', 'Gringlesby', 'Burt', '503745-6402', 'PO Box 792.', 'Covelo', 'CA', 'USA', 94301);
INSERT INTO Autores (id_autor, apellido, nombre, telefono, direccion, ciudad, estado, pais, cod_postal) 
            VALUES ('486-29-1786', 'Locksley', 'Chastity', '415935-4228', '18 Broadway Av.', 'San Francisco', 'CA', 'USA', 95428);

/*****************************************************TABLA PUBLICADORES*******************************************************/
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0736, 'New Age Books', 'Boston', 'MA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0879, 'Binnet and Hardley', 'Washington', 'DC');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (1389, 'Algodata Infosystems', 'Berkeley', 'CA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0730, 'New Age Books', 'Boston', 'MA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0877, 'Binnet and Hardley', 'Washington', 'DC');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (1377, 'Algodata Infosystems', 'Berkeley', 'CA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0790, 'New Age Books', 'Boston', 'MA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0812, 'Binnet and Hardley', 'Washington', 'DC');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (1344, 'Algodata Infosystems', 'Berkeley', 'CA');
INSERT INTO Publicadores (id_pub, nombre_pub, ciudad, estado) 
            VALUES (0786, 'New Age Books', 'Boston', 'MA');

/******************************************************************************************************************************/


/******************************************************TABLA TITULOS***********************************************************/
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('BU1032', 'The Busy Executive s Database Guide', 'Business', 1389, 20, 5000, 4095, 'An overview of available database systems with emphasis on common business applications. Illustrated.', '2013-10-10', '172-32-1176');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('BU1111', 'Cooking with Computers: Surreptitious Balance Sheets', 'Business', 1389, 12, 5000, 3876, 'Helpful hints on how to use your electronic resources to the best advantage.', '2013-10-10',  '213-46-8915');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('BU2075', 'You Can Combat Computer Stress!', 'Business', 0736, 2.99, 10125, 18722, 'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations', '2013-10-10',  '238-95-7766');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('BU7832', 'Straight Talk About Computers', 'Business', 1389, 20, 5000, 4095, 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.', '2013-10-10', '267-41-2394');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('MC2222', 'Silicon Valley Gastronomic Treats', 'mod_cook', 0877, 20, 0, 2032, 'Favorite recipes for quick, easy, and elegant meals, tried and tested by people who never have time to eat, let alone cook.', '2013-10-10',  '274-80-9391');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('MC3021', 'The Gourmet Microwave', 'mod_cook', 0877, 2.99, 15000, 22246, 'Traditional French gourmet recipes adapted for modern microwave cooking.', '2013-10-10',  '341-22-1728');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('MC3026', 'The Psychology of Computer Cooking', 'undecided', 0877, 0, 0, 0, 'No', '2013-10-10',  '409-56-7008');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('PC1035', 'But Is It User Friendly?', 'popular_comp', 1389, 23, 7000, 8780, 'A survey of software for the naive user, focusing on the friendliness of each.', '2013-10-10',  '427-17-2319');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('PC8888', 'Secrets of Silicon Valley', 'popular_comp', 1389, 20, 8000, 4095, 'Muckraking reporting by two courageous women on the world s largest computer hardware and software manufacturers.', '2013-10-10',  '472-27-2349');
INSERT INTO Titulos (id_titulo, titulo, tipo, id_pub, precio, avance, total_ventas, notas, fecha_pub, contrato) 
            VALUES ('PC9999', 'Net Etiquette', 'popular_comp', 1389, 0, 0, 0, 'A must-read for computer conferencing debutantes!', '2013-10-10',  '486-29-1786');