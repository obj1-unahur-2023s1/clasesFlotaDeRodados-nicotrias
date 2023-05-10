import rodados.*
import dependencias.*

class Pedido{
	const property distancia
	var property tiempoMaximo
	const property cantidadPasajeros
	const property coloresIncompatibles = #{}
	
	method velocidadRequerida()=  distancia / tiempoMaximo
	method puedeSatisfacer(unRodado){
		return	unRodado.velocidad() >= self.velocidadRequerida() +10 and
				unRodado.capacidad() >= cantidadPasajeros and
				not self.colorIncompatible(unRodado.color())
		}
	method agregarColorIncompatible(unColor){
		coloresIncompatibles.add(unColor)
	}
	
	method colorIncompatible(unColor)=
		coloresIncompatibles.contains(unColor)
	
	//method acelerar()
}