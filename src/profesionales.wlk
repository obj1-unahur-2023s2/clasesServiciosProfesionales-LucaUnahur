// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	method honorariosPorHora() { return 3000 }
	method estudioEn(uni){
		
	}
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	method provinciaDondePuedeTrabajar()=universidad.provinciaActual()
	method honorariosPorHora(){
		return universidad.sueldoRecomendadoPorHora()
	}
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	var property honorariosPorHora
	var property provinciasDondePuedeTrabajar
	method trabajaALoSumoEnTresProvincias(){
		self.provinciasDondePuedeTrabajar().size()
	}
}
