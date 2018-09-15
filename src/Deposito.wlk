import Camion.*

object deposito {

	var cosasDelDeposito = []

	method agregarCosas(unaCosa) {
		cosasDelDeposito.addAll(unaCosa)
	}

	method sacarCosas(unaCosa) {
		cosasDelDeposito.remove(unaCosa)
	}

	method llenarCamion() {
		cosasDelDeposito.forEach({ unaCosa =>
			camion.cargarCosas(unaCosa)
			self.sacarCosas(unaCosa)
		})
}

}

