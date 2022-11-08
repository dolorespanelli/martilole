class Pantallas{
Boton botonInicio; // preguntar si tenemos que hacer otra class para el boton

Pantallas(){

}


 void dibujar(int estado0) {
    if (estado0 == 0) {
      this.pantallaInicio();
    } else  if (estado0 == 1) {
      this.pantallaJuego();
          } else  if (estado0 == 2) {
      this.pantallaGanaste();
    }
  }
  
  void pantallaInicio(){
  push();
  background(0);
  pop();

}

void pantallaJuego(){
  espacio.dibujar();
}

void pantallaPerdiste(){

}

void pantallaGanaste(){

}
//void presionar () {
// if (key == 'p' && .estado0 == 0 ) {
     // this.Pantallas.pantallaJuego;


  }

}
}
