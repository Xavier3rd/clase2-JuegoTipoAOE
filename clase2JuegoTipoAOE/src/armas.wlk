object ballesta {
	var flechas = 10
	
	method potencia() = 4
	method estaCargada() = flechas > 0
	method usar(){
		flechas --
	} 
}

object jabalina {
	var estaCargada = true
	
	method estaCargada() = estaCargada
	method potencia() = 30
	method usar(){
		estaCargada = false
	}
}