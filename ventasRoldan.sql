CREATE SCHEMA `VentasRoldan` ;

USE ventasRoldan;  

CREATE TABLE EMPLEADO (  
 id_empleado INT AUTO_INCREMENT PRIMARY KEY,  
 nombre VARCHAR(100) NOT NULL,  
 apellido VARCHAR(100) NOT NULL,  
 fecha_ingreso DATE,  
 tipo_empleado ENUM('Vendedor', 'Técnico') NOT NULL);  

CREATE TABLE VENDEDOR (  
 id_vendedor INT AUTO_INCREMENT PRIMARY KEY,  
 id_empleado INT UNIQUE,  
 FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado),  
 comision DECIMAL(10,2) DEFAULT 0.0);  

CREATE TABLE TECNICO (  
 id_tecnico INT AUTO_INCREMENT PRIMARY KEY,  
 id_empleado INT UNIQUE,  
 FOREIGN KEY (id_empleado) REFERENCES EMPLEADO(id_empleado),  
 especialidad VARCHAR(100)  
);  

CREATE TABLE CLIENTE (  
 id_cliente INT AUTO_INCREMENT PRIMARY KEY,  
 nombre_cliente VARCHAR(100) NOT NULL,  
 contacto VARCHAR(100),  
 telefono VARCHAR(15) NOT NULL);  

CREATE TABLE PROYECTO (  
 id_proyecto INT AUTO_INCREMENT PRIMARY KEY,  
 id_tecnico INT,  
 id_cliente INT,  
 nombre_proyecto VARCHAR(100) NOT NULL,  
 fecha_inicio DATE,  
 fecha_fin DATE,  
 FOREIGN KEY (id_tecnico) REFERENCES TECNICO(id_tecnico),  
 FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)  
);  

CREATE TABLE VENTA (  
 id_venta INT AUTO_INCREMENT PRIMARY KEY,  
 id_vendedor INT,  
 id_cliente INT,  
 fecha_venta DATE,  
 monto DECIMAL(10,2) NOT NULL,  
 FOREIGN KEY (id_vendedor) REFERENCES VENDEDOR(id_vendedor),  
 FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente)  
);