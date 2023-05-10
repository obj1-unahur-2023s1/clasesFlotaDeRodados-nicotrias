import rodados.*
import pedidos.*

class Dependencia{
	const flota = []
	const pedidos = []
	var property empleados
	
	method agregarPedido(unPedido){
		pedidos.add(unPedido)
	}
	method quitarPedido(unPedido){
		pedidos.remove(unPedido)
	}	
	method agregarAFlota(unRodado){
		flota.add(unRodado)
	}
	method quitarDeFlota(unRodado){
		flota.remove(unRodado)
	}
	method pesoTotalFlota()= flota.sum({r => r.peso()})
	method estaBienEquipada()= flota.size() >= 3 and 
							   flota.all({r=> r.velocidad() >= 100})
	method capacidadTotalEnColor(unColor)=
		flota.filter({r => r.color()== unColor}).sum({r=> r.capacidad()})
	method colorDelRodadoMasRapido()= flota.max({r=> r.velocidad()}).color()
	method capacidadDeLaFlota()= flota.sum({r=> r.capacidad()})
	method capacidadFaltante()= 0.max(empleados - self.capacidadDeLaFlota())
	method esGrande()= flota.size() >= 5 and empleados >= 40
	
	method totalPasajerosEnPedidos()= pedidos.sum({p => p.cantidadPasajeros()})
	
	method hayAlgunRodadoQueSatisfacePedido(unPedido)= 
			flota.any({r=> unPedido.puedeSatisfacer(r)})
	
	method pedidosNoPuedenSatisfacer()=
		pedidos.filter({p => not self.hayAlgunRodadoQueSatisfacePedido(p)})
	
	method todosLosPedidosTienenColorIncompatible(unColor)=
		pedidos.all({p => p.colorIncompatible(unColor)})
		
	}
