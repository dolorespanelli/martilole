class Nave {
PImage navecita;
float x, y;
int tam,cant;

Nave(){
navecita= loadImage("nave.png");
x=0;
y=300;
}

//MÉTODOS

void dibujar(){
image(navecita,0,300,100,50);
}

void mover(){
 if (keyPressed && (key== CODED)) {
      if (keyCode==LEFT) {
        x -=3;
      } else if (keyCode == RIGHT) {
        x +=3;
      }
      if (keyCode == UP) {
        y +=3;
      } else if (keyCode==DOWN) {
        y -=3;
      }
    }
  }
}
