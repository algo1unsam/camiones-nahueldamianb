object motonera {

	var cosasMotoneta = []
	

	method cargarCosas(unaCosa) {
		if (self.puedoCargar(unaCosa)) {
			cosasMotoneta.add(unaCosa)
		} else {
			error.throwWithMessage("No hay peso disponible para cargar.")
		}
	}

	method puedoCargar(unaCosa) = 
	unaCosa.peso() <= 100 and unaCosa.peligrosidad() <= 5
}

