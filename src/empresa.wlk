
import universidad.*
import profesionales.*
class Empresa {
	const profesionales=[]
	
	method contratar(agente){
		profesionales.add(agente)
	}
	
	method despedir(despedido){
		profesionales.remove(despedido)
	}
	
	method cuantosEstudiaronEn(uni){
		return profesionales.count({x=>x.estudioEn(uni)})
	}
	
	method profesionalesCaros(){
		return profesionales.filter({x=>x.honorariosPorHora()>5000})
	}
	method universidadesFormadoras(){
		return profesionales.map({x=>x.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({x=>x.honorariosPorHora()})
	}
	
	method esDeGenteAcotada(){
		return profesionales.all({x=>x.provinciasDondePuedeTrabajar().size()<=3})
	}
}
