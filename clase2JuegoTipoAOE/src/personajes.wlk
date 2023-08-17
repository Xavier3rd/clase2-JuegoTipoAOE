import armas.*
import elementos.*

object floki {
	var arma
	
	method arma(unArma) {
		arma = unArma
	}
	
	method encontrar(unElemento){
		if(arma.estaCargada()){
			unElemento.recibirAtaque(arma.potencia())
			arma.usar()
		}
	}
}

object mario {
	var cantidadRecolectada = 0
	var alturaFinalDelElemento = 0
	
	method encontrar(unElemento) {
		unElemento.recibirTrabajo()
		cantidadRecolectada += unElemento.otorgarUnidades()
		alturaFinalDelElemento = unElemento.altura()
	}
	method estaFeliz()= cantidadRecolectada >= 50 or alturaFinalDelElemento >= 10
}