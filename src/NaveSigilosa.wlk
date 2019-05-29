import NaveCombate.*

class NaveSigilosa inherits NaveCombate {

	override method escapar() {
		super()
		self.desplegarMisiles()
		self.ponerseInvisible()
	}

	override method estaTranquila() {
		return super() and not self.estaInvisible()
	}

}

