import wollok.game.*

class ChevroletCorsa {
	var property color
	var property image 
	var property position
	const property posiciones = [self.position()]
	
	method image() = if (color == "azul") "autitoazul.png"  else if (color == "negro") "autitonegro.png" else "autitorojo.png"
	
	method capacidad() = 4
	
	method velocidadMax() = 150
	
	method peso() = 1300
	
	method moverALaDerecha() {
		self.position(self.position().right(1))
		posiciones.add(self.position())
	}
	
	method moverALaIzquierda() {
		self.position(self.position().left(1))
		posiciones.add(self.position())
	}
	
	method moverArriba() {
		self.position(self.position().up(1))
		posiciones.add(self.position())
	}
	
	method moverAbajo() {
		self.position(self.position().down(1))
		posiciones.add(self.position())
	}
	
	method pasoPor(posicion) = posiciones.any({ p => p == posicion })
	
	method pasoPorFila(numero) = posiciones.any({ p => p.x() == numero })
	
	method recorrioFilas(listaDeNumeros) = listaDeNumeros.all({ numero => self.pasoPorFila(numero) })
	
}

class RenaultKwid {
	var property tanqueAdicional
	
	
	method capacidad() = if (tanqueAdicional) 3 else 4
	
	method velocidadMax() = if (tanqueAdicional) 120 else 110
	
	method peso() = if (tanqueAdicional) 1350 else 1200
	
	method color() = "azul"
	
}

object traffic {
	var property interior
	var property motor
	
	method capacidad() = self.interior().capacidad()
	
	method velocidadMax() = self.motor().velocidadMax()
	
	method peso() = self.interior().peso() + self.motor().peso() + 4000
	
	method color() = "blanco"
	
}

class Interior {
	var property peso 
	var property capacidad 
	
}

class Motor {
	var property peso
	var property velocidadMax
	
}


class AutoEspecial {
	var property capacidad
	var property velocidadMax
	var property peso
	var property color
	
}
