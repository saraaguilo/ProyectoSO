
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <my_global.h>
#include <mysql.h>
int main(int argc, char *argv[]) {
	
	MYSQL *conn;
	int err;
	// Estructura especial para almacenar resultados de consultas 
	MYSQL_RES *resultado;
	MYSQL_ROW row;
	//Creamos una conexion al servidor MYSQL 
	conn = mysql_init(NULL);
	if (conn==NULL) {
		printf ("Error al crear la conexion: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	conn = mysql_real_connect (conn, "localhost","root", "mysql", "Juego",0, NULL, 0);
	if (conn==NULL) {
		printf ("Error al inicializar la conexion: %u %s\n", 
				mysql_errno(conn), mysql_error(conn));
		exit (1);
	}
	
	char consulta[80];
	strcpy(consulta,"SELECT Partida.ganador FROM (Jugador, Partida, Resultado) WHERE Partida.id = 2 AND Jugador.id = Resultado.Jugador AND Partida.id = Resultado.Partida ");
	err=mysql_query (conn, consulta);
	if(err!=0){
		printf("Error al consultar la base de datos %u %s\n");
	} exit(1);
	mysql_close(conn);
	exit(0);
	}
	