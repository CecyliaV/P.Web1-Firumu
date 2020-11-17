CREATE DATABASE DB_FIRUMU 

USE DB_FIRUMU

--TABLA ROLS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Rols' AND type ='U')
BEGIN 
	DROP TABLE Rols
END	
CREATE TABLE Rols(
	IdRol			int primary key,
	Nombre			varchar(20)
)

--TABLA CATEGORIA--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Categoria' AND type ='U')
BEGIN 
	DROP TABLE Categoria
END	
CREATE TABLE Categoria(
	IdCatego		int primary key,
	Nombre			varchar(20)
)

--TABLA USUARIOS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Usuarios' AND type ='U')
BEGIN 
	DROP TABLE Usuarios
END	
CREATE TABLE Usuarios(
	IdUsuario		int primary key,
	Email			varchar(30),
	NombreUs		varchar(20),
	Contra			varchar(20),
	RedesS			varchar(200),
	Imagen			varchar(500),
	Descrip			varchar(100),
	Activo			bit DEFAULT (1),
	Rol				int --FK ROL--
)

--TABLA NOTICIAS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Noticias' AND type ='U')
BEGIN 
	DROP TABLE Noticias
END	
CREATE TABLE Noticias(
	IdNoticia		int primary key,
	Título			varchar(30),
	Descrip			varchar(50),
	Noticia			varchar(2500),
	Aprobada		bit DEFAULT (0),
	UsuarioG		int, --FK USUARIO--
	UsuarioV		int, --FK USUARIO--
	Observ			varchar(200),
	Categoria		int --FK CATEGORIA--
)

--TABLA IMAGENES--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Imagenes' AND type ='U')
BEGIN 
	DROP TABLE Imagenes
END	
CREATE TABLE Imagenes(
	IdImagen		int primary key,
	Dir				varchar(500),
	Noticia			int --FK NOTICIA--
)

--TABLA VIDEOS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Videos' AND type ='U')
BEGIN 
	DROP TABLE Videos
END	
CREATE TABLE Videos(
	IdVideo			int primary key,
	Dir				varchar(500),
	Noticia			int --FK NOTICIA--
)

--TABLA COMENTARIOS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Comentarios' AND type ='U')
BEGIN 
	DROP TABLE Comentarios
END	
CREATE TABLE Comentarios(
	IdComentario	int primary key,
	Fecha			date,
	Hora			time,
	Noticia			int --FK NOTICIA--
)

--TABLA REVISIONES--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Revisiones' AND type ='U')
BEGIN 
	DROP TABLE Revisiones
END	
CREATE TABLE Revisiones(
	IdRevi			int primary key,
	UsuarioR		int, --FK USUARIO--
	Coment			int --FK COMENTARIOS--
)

--TABLA CREACOMENT--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'CreaComent' AND type ='U')
BEGIN 
	DROP TABLE CreaComent
END	
CREATE TABLE CreaComent(
	IdCC			int primary key,
	UsuarioCC		int, --FK USUARIO--
	Coment			int --FK COMENTARIOS--
)

--TABLA GUARDADOS--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Guardados' AND type ='U')
BEGIN 
	DROP TABLE Guardados
END	
CREATE TABLE Guardados(
	IdGuard			int primary key,
	UsuarioS		int, --FK USUARIO--
	Noticia			int --FK NOTICIAS--
)

--TABLA CALIFICACIONES--
IF EXISTS(SELECT 1 FROM sysobjects WHERE name = 'Califica' AND type ='U')
BEGIN 
	DROP TABLE Califica
END	
CREATE TABLE Califica(
	IdCalif			int primary key,
	UsuarioC		int, --FK USUARIO--
	Noticia			int --FK NOTICIAS--
)

ALTER TABLE Usuarios ADD CONSTRAINT FK_USU_ROL FOREIGN KEY (Rol)REFERENCES Rols (IdRol) 

ALTER TABLE Noticias ADD CONSTRAINT FK_NOT_USUG FOREIGN KEY (UsuarioG) REFERENCES Usuarios (IdUsuario)
ALTER TABLE Noticias ADD CONSTRAINT FK_NOT_USUV FOREIGN KEY (UsuarioV) REFERENCES Usuarios (IdUsuario)
ALTER TABLE Noticias ADD CONSTRAINT FK_NOT_CAT FOREIGN KEY (Categoria) REFERENCES Categoria (IdCatego)

ALTER TABLE Imagenes ADD CONSTRAINT FK_IMA_NOT FOREIGN KEY (Noticia) REFERENCES Noticias (IdNoticia)

ALTER TABLE Videos ADD CONSTRAINT FK_VID_NOT FOREIGN KEY (Noticia) REFERENCES Noticias (IdNoticia)

ALTER TABLE Comentarios ADD CONSTRAINT FK_COM_NOT FOREIGN KEY (Noticia) REFERENCES Noticias (IdNoticia)

ALTER TABLE Revisiones ADD CONSTRAINT FK_REV_USUR FOREIGN KEY (UsuarioR) REFERENCES Usuarios (IdUsuario)
ALTER TABLE Revisiones ADD CONSTRAINT FK_REV_COM FOREIGN KEY (Coment) REFERENCES Comentarios (IdComentario)

ALTER TABLE CreaComent ADD CONSTRAINT FK_CC_USUCC FOREIGN KEY (UsuarioCC) REFERENCES Usuarios (IdUsuario)
ALTER TABLE CreaComent ADD CONSTRAINT FK_CC_COM FOREIGN KEY (Coment) REFERENCES Comentarios (IdComentario)

ALTER TABLE Guardados ADD CONSTRAINT FK_GUA_USUS FOREIGN KEY (UsuarioS) REFERENCES Usuarios (IdUsuario)
ALTER TABLE Guardados ADD CONSTRAINT FK_GUA_NOT FOREIGN KEY (Noticia) REFERENCES Noticias (IdNoticia)

ALTER TABLE Califica ADD CONSTRAINT FK_CAL_USUC FOREIGN KEY (UsuarioC) REFERENCES Usuarios (IdUsuario)
ALTER TABLE Califica ADD CONSTRAINT FK_CAL_NOT FOREIGN KEY (Noticia) REFERENCES Noticias (IdNoticia)
