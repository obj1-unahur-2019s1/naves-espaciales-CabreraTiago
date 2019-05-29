class NaveEspacial {

	var property velocidad = 0
	var property direccion = 0
	var combustible = 0

	method acelerar(cuanto) {
		velocidad = (velocidad + cuanto).min(100000)
	}

	method desacelerar(cuanto) {
		velocidad = (velocidad - cuanto).max(0)
	}

	method irHaciaElSol() {
		direccion = 10
	}

	method escaparDelSol() {
		direccion = -10
	}

	method ponerseParaleloAlSol() {
		direccion = 0
	}

	method acercarseUnPocoAlSol() {
		direccion = 10.min(direccion += 1)
	}

	method alejarseUnPocoDelSol() {
		direccion = -10.max(direccion -= 1)
	}

	method cargarCombustible(cantidad) {
		combustible += cantidad
	}

	method descargarCombustible(cantidad) {
		combustible = 0.max(combustible - cantidad)
	}

	method prepararViaje() {
		self.cargarCombustible(30000)
		self.acelerar(5000)
	}

	method estaTranquila() {
		return combustible >= 4000 and velocidad <= 12000
	}

}

