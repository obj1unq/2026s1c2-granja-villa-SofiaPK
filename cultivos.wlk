import wollok.game.*
import estadoCultivos.*

class Maiz {
	var estado = maizBrote
	var property position
	
	method precio() {
		return 150
	}

	method image() {
		return estado.image()
	}

	method serSembrado() {
		game.addVisual(self)
	}

	method serRegado() {
		estado = maizMaduro
	}

	method estaListoParaSerCosechado() {
		return estado.esCosechable()
	}

}

class Trigo{
	var property position
	var etapaDeEvolucion = trigoEtapaEvolucion0

	//getter
	method etapaDeEvolucion() {
		return etapaDeEvolucion
	}

	// 100 monedas si está en etapa 2, 200 si está en etapa 3. La cuenta cheta es (etapa - 1) * 100.
	// preguntar q es mejor hacer
	method precio() {
		return etapaDeEvolucion.valor() 
	}

	method image() {
		return etapaDeEvolucion.image()
	}

	method serSembrado() {
		game.addVisual(self)
	}

	method serRegado() {
		etapaDeEvolucion = etapaDeEvolucion.siguienteEstado()
	}

	method estaListoParaSerCosechado() {
		etapaDeEvolucion.esCosechable()
	}

}

class Tomaco{
	var property position

	method image() {
		return "tomaco.png"
	}

	method precio() {
		return 80
	}

	method serSembrado() {
		game.addVisual(self)
	}

	//Se mueve a la celda de arriba. Si ya está en el borde de arriba pasa abajo de todo
	// borde de arriba: game.height() - 1
	method serRegado() {
		if (self.estaEnElBordeDeArriba()){
			self.irAbajoDeTodo()
		} else {
			self.moverseArriba()
		}
	}

	method estaEnElBordeDeArriba() {
		return self.position().y() == game.height() - 1
	}

	method irAbajoDeTodo() {
		position = game.at(self.position().x(), 0)
	}

	method moverseArriba() {
		position = position.up(1)
	}

	method estaListoParaSerCosechado() {
		return true
	}
}