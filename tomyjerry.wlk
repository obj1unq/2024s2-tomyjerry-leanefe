object tom {
	var energia = 50

	method energia() {
		return energia
	}

	method comer(raton) {
		energia = energia + self.energiaPorComer(raton)
	}

	method energiaPorComer(raton) {
		return 12 + raton.peso()
	}
	
	method correr(distancia) {
		energia = energia - 
			self.energiaGastadaEnCorrer(distancia)
	}
	
	method energiaGastadaEnCorrer(distancia) {
		return distancia / 2
	}

	method velocidadMaxima()  {
		return 5 + energia / 10
	}
	
	method puedeComer(distancia) {
		return energia >= self.energiaGastadaEnCorrer(distancia)
	}

	method quiereComer(raton, distancia) {
		return self.puedeComer(distancia) && 
			self.convieneComer(raton, distancia)
	}

	method convieneComer(raton, distancia) {
		return self.energiaGastadaEnCorrer(distancia) < 
			self.energiaPorComer(raton)
	}
}

object jerry{
	var edad = 2

	method edad(_edad) {
	  edad = _edad
	}

	method peso(){
		return edad * 20
	}
}

object nibbles {
	
	method peso() {
		return 35
	}
}