import NaveEspacial.*

class NavePasajeros inherits NaveEspacial {

	var property cantPasajeros
	var racionesComida
	var racionesBebida

	method cargarRacionesComida(raciones) {
		racionesComida += raciones
	}

	method descargarRacionesComida(raciones) {
		racionesBebida = 0.max(racionesComida - raciones)
	}

	method cargarRacionesBebida(raciones) {
		racionesBebida += raciones
	}

	method descargarRacionesBebida(raciones) {
		racionesBebida = 0.max(racionesBebida - raciones)
	}

	override method prepararViaje() {
		self.cargarRacionesComida(4 * cantPasajeros)
		self.cargarRacionesBebida(6 * cantPasajeros)
		self.acercarseUnPocoAlSol()
		super()
	}

	method recibirAmenaza() {
		self.escapar()
		self.avisar()
	}

	method escapar() {
		self.acelerar(self.velocidad())
	}

	method avisar() {
		self.descargarRacionesComida(1 * cantPasajeros)
		self.descargarRacionesBebida(2 * cantPasajeros)
	}

}

