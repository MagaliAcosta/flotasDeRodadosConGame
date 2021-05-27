import wollok.game.*

class ChevroletCorsa {
	var property color
	
	method capacidad() = 4
	
	method velocidadMax() = 150
	
	method peso() = 1300
	
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
