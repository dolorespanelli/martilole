int cant, tam, newMemoria;
PImage []memoria = new PImage[6];
int []columnas = new int[5];
int []filas = new int[5];
int relleno;
boolean apareceAlbum, cuadrados;
String estado;


void setup() {
  size(800, 600);
  cant= 4;
  tam= 800/cant;
  newMemoria=5;
  colorMode(RGB);
  columnas [0] = 0;
  columnas [1] = 200;
  columnas [2] = 400;
  columnas [3] = 600;

  filas [0] = 0;
  filas [1] = 200;
  filas [2] = 400;
  filas [3] = 600;


  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("zayn.jpg");
  memoria [2]=  loadImage("badBunny.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("imagineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
  relleno=230;
  apareceAlbum=false;
  estado= "inicio";
}

void draw() {

  if (estado.equals("inicio")) {
    uImagenes();
    for (int i=0; i< cant; i++) {
      for (int l=0; l<cant; l++) {
        rect(i*tam, l*tam, 400, 400);
        fill(relleno);
      }
    }
  }
}



void mouseClicked() {
  if (estado.equals("inicio") && apareceAlbum) {
    rect(0, 0, 200, 200); noFill();
  }


  if (mouseX>columnas[0] && mouseX<columnas[1] && mouseY>filas[0] && mouseY <filas[1]) {
   // areceAlbum=false;
    rect(0, 0, 200, 200);
    noFill();
  }
  if (mouseX>columnas[1] && mouseX<columnas[2] && mouseY>filas[0] && mouseY <filas[1]) {
    //apeceAlbum=false;
    rect(200, 0, 400, 200);
    noFill();
  }
}
