import NaveEspacial.*

class NaveCombate inherits NaveEspacial {

	var esVisible = true
	var misilesDesplegados = false
	const listaMensajes = []

	method ponerseVisible() {
		esVisible = true
	}

	method ponerseInvisible() {
		esVisible = false
	}

	method estaInvisible() {
		return not esVisible
	}

	method desplegarMisiles() {
		misilesDesplegados = true
	}

	method replegarMisiles() {
		misilesDesplegados = false
	}

	method misilesDesplegados() {
		return misilesDesplegados
	}

	method emitirMensaje(mensaje) {
		listaMensajes.add(mensaje)
	}

	method mensajesEmitidos() {
		return listaMensajes
	}

	method primerMensajeEmitido() {
		return listaMensajes.first()
	}

	method ultimoMensajeEmitido() {
		return listaMensajes.last()
	}

	method esEscueta() {
		return listaMensajes.all{ mensaje => not (mensaje.size() >= 30) }
	}

	method emitioMensaje(mensaje) {
		return listaMensajes.contains(mensaje)
	}

	override method prepararViaje() {
		self.ponerseVisible()
		self.replegarMisiles()
		self.acelerar(15000)
		self.emitirMensaje("Saliendo en misión")
		super()
	}

	method recibirAmenaza() {
		self.escapar()
		self.avisar()
	}

	method escapar() {
		self.acercarseUnPocoAlSol()
		self.acercarseUnPocoAlSol()
	}

	method avisar() {
		self.emitirMensaje("Amenaza recibida")
	}

	override method estaTranquila() {
		return super() and not self.misilesDesplegados()
	}

}

