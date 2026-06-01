import wollok.game.*
import cultivos.*

object hector {
	var property position = game.center()
	const property image = "fplayer.png"

	method sembrar(cultivo) {
		self.validarSiPuedeSembrar()
		cultivo.serSembrado()
	}

	method validarSiPuedeSembrar() {
		if (not game.colliders(self).isEmpty()){
			self.error("La parcela está ocupada")
		}
	}

	method regar() {
		self.validarSiPuedeRegar()
	}

	method validarSiPuedeRegar() {
	  //"no tengo nada para regar"
	}

	method cosechar() {
	  
	}

	method vender() {
	  
	}
}