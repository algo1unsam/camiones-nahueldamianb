import Cosas.*
import Deposito.*
import Motonera.*

object camion {

	var cosas = []
	var property cargaMaxima = 2000
	

	method cargarCosas(unaCosa) {
		if (self.puedoCargar(unaCosa)) {
			cosas.add(unaCosa)
			
		} else {
			error.throwWithMessage("No hay peso disponible para cargar.")
		}
	}

	method descargarCosas(unaCosa) {
		cosas.remove(unaCosa)
	}

	method tenesIncluido(unaCosa) {
		return cosas.contains(unaCosa)
	}

	method pesoTotal() {
		return cosas.sum({ unaCosa => unaCosa.peso() })
	}

	method cargaDisponible() {
		return cargaMaxima - self.pesoTotal()
	}

	method puedoCargar(unaCosa) = unaCosa.peso() < self.cargaDisponible()

	method cosaMasPeligrosa() {
		return cosas.max({ unaCosa => unaCosa.peligrosidad() })
	}

	method puedeCircular() = cosas.sum({ unaCosa => unaCosa.peligrosidad()})  < ruta.limite() 
		
	


}
object ruta {

	var property limite = 10

}

