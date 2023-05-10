class Corsa {
	var property color
	method capacidad()= 4
	method velocidad()= 150
	method peso()= 1300
}

class Kwid{
	var property tanqueExtra = false
	method capacidad()= if(tanqueExtra)3 else 4
	method velocidad()= if(tanqueExtra)120 else 110
	method peso()= 1200 + if(tanqueExtra)150 else 0
	method color()= "azul"
}

object trafic{
	var property interior
	var property motor
	
	method capacidad()= interior.capacidad()
	method velocidad()= motor.velocidad()
	method peso()= 4000 + interior.peso() + motor.peso()
	method color()= "blanco"
}

object comodo{
	
	method capacidad()= 5
	method peso()= 700
}

object popular{
	method capacidad()= 12
	method peso()= 1000
}

object pulenta{
	method velocidad()= 130
	method peso()= 800
}

object bataton{
	method velocidad()= 80	
	method peso()= 500
}

class AutoEspecial{
	var property velocidad
	var property peso
	var property capacidad
	var property color
}





