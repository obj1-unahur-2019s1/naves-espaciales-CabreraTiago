import NaveEspacial.*

class NaveBaliza inherits NaveEspacial {

	var property colorActual

	method cambiarColorDeBaliza(colorNuevo) {
		colorActual = colorNuevo
	}

	override method prepararViaje() {
		self.cambiarColorDeBaliza("verde")
		self.ponerseParaleloAlSol()
		super()
	}

	method recibirAmenaza() {
		self.escapar()
		self.avisar()
	}

	method escapar() {
		self.irHaciaElSol()
	}

	method avisar() {
		self.cambiarColorDeBaliza("rojo")
	}

	override method estaTranquila() {
		return super() and not colorActual.equals("rojo")
	}

}

