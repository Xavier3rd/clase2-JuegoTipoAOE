object pepita {
	var energia = 100
	var ciudad = buenosAires
	/*metodos de consulta */
	method energiaActual() {return energia}
	method ciudadActual(){return ciudad}
	method estaFeliz(){return energia > 100}
	method diezPorcientoDeEnergia(){return energia/10}
	/*metodos de indicación */
	method energia(nuevaEnergia){energia = nuevaEnergia}
	method comerLombriz(){energia += 20	}
	method comerAlpiste(gramos){energia += 2*gramos}
	method volarEnCirculos(){energia -= 10}
	method volarHacia(destino){
		energia = energia - (mapa.distanciaEntre_Y_(ciudad, destino))/10
		ciudad = destino
	}
	method recargar10PorcientoDeEnergiaConAlpiste(){
			self.comerAlpiste(self.diezPorcientoDeEnergia()/2)			
	}
	
	
	method volarHacia_ConRecargoDeEnergia(ciudadDestino, gramos){
		self.comerAlpiste(gramos)
		self.volarHacia(ciudadDestino)
		energia = self.energiaActual()
		self.recargar10PorcientoDeEnergiaConAlpiste()
	}
}

object cordoba {
	method kilometro() {return 696}
}

object rosario {
	method kilometro() {return 298}
}

object buenosAires {
	method kilometro() {return 0}
}

object mapa {
	method distanciaEntre_Y_(ciudadDePartida,ciudadDestino){
		return (ciudadDePartida.kilometro() - ciudadDestino.kilometro()).abs()
	}	
}



object anastasia {
	
	
}

object pepucha {
	var energia = 50
	
	method energiaActual() {return energia}
	
}