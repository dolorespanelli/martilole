int cant, tam, newMemoria;
PImage []memoria = new PImage[6];
int []columnas = new int[5];
int []filas = new int[5];
int relleno;
boolean apareceAlbum, desaparece;
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
  columnas[4]=800;

  filas [0] = 0;
  filas [1] = 200;
  filas [2] = 400;
  filas [3] = 600;
  filas [4]=800;


  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("zayn.jpg");
  memoria [2]=  loadImage("badBunny.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("imagineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
  relleno=230;

  estado= "inicio";
}

void draw() {
  background(0);

  apareceAlbum=mouseX>columnas[0] && mouseX<columnas[1] && mouseY>filas[0] && mouseY <filas[1];
  if (estado.equals("inicio")) {
    uImagenes();
    for (int i=0; i< cant; i++) {
      for (int l=0; l<cant; l++) {
        rect(i*tam, l*tam, 200, 200);
        fill(200, 0, 0);
      }
    }
  }
}



void mouseClicked() {
  //if (estado.equals("inicio"){

  for (int i=0; i==mouseX; i++) {
    rect(i*tam, 0, 200, 200);
    noFill();
  }

  if (mouseX>=filas[0] && mouseX  <=filas[1] && mouseY>= columnas[0] && mouseY <= columnas[1]) {
    //apeceAlbum=false;
    image(memoria[0], 0, 0, 200, 200);
  }
  if (mouseX>=filas[1] && mouseX  <= filas[2] && mouseY<=columnas[1] && mouseY <= columnas[1]) {
    //apeceAlbum=false;
    image(memoria[1], 200, 0, 200, 200);
  }
  if (mouseX>=filas[2] && mouseX  <= filas[3] && mouseY<=columnas[2] && mouseY <= columnas[1]) {
    //apeceAlbum=false;
    image(memoria[2], 400, 0, 200, 200);
  }
  if (mouseX>=filas[3] && mouseX  <= filas[4] && mouseY<=columnas[3] && mouseY <= columnas[1]) {
    //apeceAlbum=false;
    image(memoria[3], 600, 0, 200, 200);
  }
 
}
