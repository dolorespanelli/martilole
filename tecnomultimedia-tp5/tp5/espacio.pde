class Espacio {
  
PImage fondo;
float x, y;
int estado0;
Espacio espacio ;
//Planetas p1, p2, p3 ; 
Estrellas varias;
Nave n1;
Pantallas pantalla;
 
Espacio(){
  this.estado0=0;
fondo=loadImage("espacio.jpg");
this.pantalla = new Pantallas();
varias = new Estrellas();
n1 = new Nave();
estado0=0;
}

//MÉTODOS

void dibujar(){ 
  //dibujará el escenario
image(fondo,0,0,800,600);
varias.crear();
n1.dibujar();
this.pantalla.dibujar(this.estado0);

}


void jugar(){
}


void reiniciar(){
//todos los valores a 0


}
void mouse() {
    varias.colorear();
  }

  void teclado() {
    varias.reiniciar();
    n1.mover();
  }
}
