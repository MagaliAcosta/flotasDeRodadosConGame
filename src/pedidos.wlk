import rodados.*

class Pedido {
	var property distanciaARecorrer
	var property tiempoMax
	var property cantPasajeros
	var property coloresIncompatibles
	
	method velocidadRequerida() = distanciaARecorrer / tiempoMax
	
	method autoSastifacePedido(auto) = auto.velocidadMax() > self.velocidadRequerida() and
										auto.capacidad() >= cantPasajeros and 
										not coloresIncompatibles.any({ color => color == auto.color()})
										
	method acelerar() { self.tiempoMax(tiempoMax - 1) }
	
	method relajar() { self.tiempoMax(tiempoMax + 1) }
	
}