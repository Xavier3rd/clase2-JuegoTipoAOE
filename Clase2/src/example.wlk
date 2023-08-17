/** First Wollok example */
object pepita {
	var energia = 0
	var edad = 2
	
	method energia() = energia 
	method edad() = edad
	method estaFeliz() = energia >= 10
	method cumplirAnios() {
		edad++
	}
	method comer(gramos){
		energia += 5 * gramos 
	}
	
	method volar(kms){
		energia -= 0.max(energia - (kms * 2))
	}
}

object pepon {
	var totalGramos = 0
	var totalKilometros = 0
	
	method comer(gramos){
		totalGramos += gramos
	}
	
	method volar(kilometros){
		totalKilometros += kilometros
	}
	 
}

object roque {
	var pupila = pepita
	
	method pupila(unaPupila){
		pupila = unaPupila
	}
	
	method pupila() = pupila
	
	method rutina(){
		pupila.comer(10)
		pupila.volar(10)
		pupila.comer(2)
	}
}

