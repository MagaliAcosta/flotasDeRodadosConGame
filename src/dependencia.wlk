import rodados.*
import pedidos.*

class Dependencia {
	const flotaRodados = []
	const pedidos = []
	var property empleados
	
	method agregarAFlota(rodado) {
		flotaRodados.add(rodado)
	}
	
	method quitarDeFlota(rodado) {
		flotaRodados.remove(rodado)
	}
	
	method pesoTotalFlota() = flotaRodados.sum({ rodados => rodados.peso() })
	
	method estaBienEquipada() = flotaRodados.size() >= 3 and flotaRodados.all({ rodado => rodado.velocidadMax() >= 100 })
	
	method capacidadTotalEnColor(color) = flotaRodados.filter({ rodado => rodado.color() == color }).sum({ rodado => rodado.capacidad() })
	
	method colorDelRodadoMasRapido() = flotaRodados.max({ rodado => rodado.velocidadMax() }).color()
	
	method capacidadFaltante() = self.empleados() - self.capacidadTotal()
	
	method capacidadTotal() = flotaRodados.sum({ rodado =>  rodado.capacidad() })
	
	method esGrande() = self.empleados() >= 40 and flotaRodados.size() >= 5
	
	method agregarPedido(unPedido) {
		pedidos.add(unPedido)
	}
	
	method quitarPedido(unPedido) {
		pedidos.remove(unPedido)
	}
	
	method totalPasajeros() = pedidos.sum({ pedido =>  pedido.cantPasajeros() })
	
	method pedidosNoSastifechoPorNinguno() = pedidos.filter({ pedido =>  flotaRodados.all({ auto => not pedido.autoSastifacePedido(auto) }) })
	
	method todosTienenComoColorIncompatible(color) = pedidos.all({ pedido =>  pedido.coloresIncompatibles().any({ c => c == color }) })

	method relajarTodosLosPedidos() = pedidos.forEach({ pedido => pedido.relajar() })
	
}
