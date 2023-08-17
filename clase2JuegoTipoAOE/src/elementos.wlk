object castillo {
	var defensa = 150

	method altura() = 20
	method recibirAtaque(unValor) {
		defensa = 0.max(defensa - unValor)
	}
	method recibirTrabajo() {
		defensa = 200.min(defensa + 20)
	}
	method otorgarUnidades() = defensa * 0.2
}

object aurora {
	var estaViva = true
	
	method altura() = 1
	method estaViva() = estaViva 
	method recibirAtaque(unValor) {
		estaViva = unValor < 10 and estaViva
	}
	method recibirTrabajo() {}
	method otorgarUnidades() = 15
}

object tipa {
	var altura = 8

	method altura() = altura
	method recibirAtaque(unValor) { }
	method recibirTrabajo() {
		altura ++
	}
	method otorgarUnidades() = altura*2
}