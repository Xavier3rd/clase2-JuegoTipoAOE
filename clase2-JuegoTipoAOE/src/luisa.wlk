import armas.*
import elementos.*
import personajes.*

object luisa {
	var personajeActivo
	
	method personajeActivo(unPersonaje){
		personajeActivo = unPersonaje
	}
	method aparecer(elemento){
	 	personajeActivo.encontrar(elemento)
	}
}
