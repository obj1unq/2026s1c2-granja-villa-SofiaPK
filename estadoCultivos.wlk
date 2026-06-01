import wollok.game.*
import cultivos.*

// MAIZ
object maizBrote {
    method image() {
        return "corn_baby.png"
    }

    method esCosechable() {
        return false
    }
}

object maizMaduro {
    method image() {
        return "corn_adult.png"
    }

    method esCosechable() {
        return true
    }
}


// TRIGO 
object trigoEtapaEvolucion0 {
    method image() {
        return "wheat_0.png"
    }

    method esCosechable() {
        return false
    }

    method siguienteEstado(){
        return trigoEtapaEvolucion1
    }

    method valor() {
        return 0
    }
}

object trigoEtapaEvolucion1 {
    method image() {
        return "wheat_1.png"
    }

    method esCosechable() {
        return false
    }

    method siguienteEstado(){
        return trigoEtapaEvolucion2
    }

    method valor() {
        return 0
    }
}

object trigoEtapaEvolucion2 {
    method image() {
        return "wheat_2.png"
    }

    method esCosechable() {
        return true
    }

    method siguienteEstado(){
        return trigoEtapaEvolucion3
    }

    method valor() {
        return 100
    }
}

object trigoEtapaEvolucion3 {
    method image() {
        return "wheat_3.png"
    }

    method esCosechable() {
        return true
    }

    method siguienteEstado(){
        return trigoEtapaEvolucion0
    }

    method valor() {
        return 200
    }
}