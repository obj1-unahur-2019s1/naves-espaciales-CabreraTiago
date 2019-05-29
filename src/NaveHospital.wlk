import NavePasajeros.*

class NaveHospital inherits NavePasajeros {

	var property quirofanoPreparado = false

	override method recibirAmenaza() {
		super()
		quirofanoPreparado = true
	}
	
	override method estaTranquila() {
		return super() and not quirofanoPreparado
	}

}

