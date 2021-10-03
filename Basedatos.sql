DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;
USE Juego;

CREATE TABLE Jugador(
	id INTEGER NOT NULL,
	nombre TEXT NOT NULL,
	contrasena TEXT NOT NULL,
	)ENGINE = InnoDB;
	
CREATE TABLE Partida(
	id INTEGER NOT NULL,
	ganador TEXT NOT NULL,
	duracion INTEGER NOT NULL,
	fecha TEXT NOT NULL,
	)ENGINE = InnoDB;
	
CREATE TABLE Resultado(
	Jugador INTEGER NOT NULL,
	Partida INTEGER NOT NULL,
	puntos INTEGER NOT NULL,
	FOREIGN KEY(Jugador) REFERENCES Jugador(id),
	FOREIGN KEY(Partida) REFERENCES Partida(id),
	)ENGINE = InnoDB;
	
INSERT INTO Jugador VALUES (1, 'Maria', 'hola123');
INSERT INTO Jugador VALUES (2, 'Juan', 'caracoles');
INSERT INTO Jugador VALUES (3, 'Carla', 'casabonita');
INSERT INTO Jugador VALUES (4, 'Fran', 'barcelona');
INSERT INTO Partida VALUES (1, 'Juan', '30', '03/04/2021');
INSERT INTO Partida VALUES (2, 'Fran', '15', '30/06/2021');
INSERT INTO Partida VALUES (3, 'Carla', '32', '15/01/2021');
INSERT INTO Resultado VALUES (1, 1, 4);
INSERT INTO Resultado VALUES (2, 1, 5);
INSERT INTO Resultado VALUES (3, 2, 2);
INSERT INTO Resultado VALUES (4, 2, 3);
INSERT INTO Resultado VALUES (3, 3, 4);