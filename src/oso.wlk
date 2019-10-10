import wollok.game.*
import direccion.*

object oso {

	var property position = new Position(x = 9, y = 7)

	method image() = "oso.png"

	method moveteALaIzquierda() {
		if (position.x() > 0) {
			position = position.left(1)
		}
	}

	method moveteALaDerecha() {
		if (position.x() > game.width() - 1) {
			position = position.right(1)
		}
	}

	method moveteHaciaArriba() {
		if (position.y() < game.height() - 1) {
			position = position.up(1)
		}
	}

	method moveteHaciaAbajo() {
		if (position.y()>0){
			position=position.down(1)
		}
	}
	method moverEnDireccion(direccion){
		position=direccion.siguientePosicion(position)
	}
	method moveteAlAzar(){
		var dado=1.randomUpTo(5).truncate(0)	
		if (dado==1){
			self.moveteALaIzquierda()
		} else if (dado==2){
			self.moveteHaciaArriba()
		} else if (dado==3){
			self.moveteALaDerecha()
		} else {
			self.moveteHaciaAbajo()
		}		
	}
}
	