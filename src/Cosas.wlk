import Camion.*

object knightRider {

	var property peso = 500
	var property peligrosidad = 10

}

object bumblebee {

	var property peso = 800
	var property forma = auto

	method peligrosidad() = forma.peligrosidad()

}

object auto {

	var property peligrosidad = 15

}

object robot {

	var property peligrosidad = 30

}

object paqueteLadrillos {

	var property peligrosidad = 2
	var property cantLadrillos = 0

	method peso() {
		// TODO el peso es la cantidad de ladrillos por el peso de cada ladrillo
		return cantLadrillos * 2
	}

}

//Cosas del punto 5
object contenedorPortuario {

	var otrasCosas = []

	method agregarCosas(unaCosa) {
		otrasCosas.add(unaCosa)
	}

	method descargarCosas(unaCosa) {
		otrasCosas.remove(unaCosa)
	}

	method peso() {
		return 100 + otrasCosas.sum({ unaCosa => unaCosa.peso() })
	}

	method esPeligroso() {
		if (!otrasCosas.isEmpty()) return otrasCosas.max({ unaCosa => unaCosa.peligrosidad() }) else return 0
}
}

object embalajeSeguridad {

	// TODO la cosa debería ser una atributo
	// sino yo podría mandar estos dos mensajes con cosas diferentes y no sería consistente 
	
	method peso(unaCosa) {
		return unaCosa.peso()
	}

	method esPeligroso(unaCosa) {
		return unaCosa.peligrosidad()/2
	}

}



