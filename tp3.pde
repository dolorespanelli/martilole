int cant, tam, newMemoria;
PImage []memoria = new PImage[6];
int []columnas = new int[5];
int []filas = new int[5];
color relleno;
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
  columnas [4] = 800;

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
  relleno=color(254,185,255);
  apareceAlbum=false;
  estado= "inicio";
}

void draw() {
  strokeWeight(2);
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
    rect(0, 0, 200, 200); 
    noFill();
  }



  if (mouseX>columnas[0] && mouseX<columnas[1] && mouseY>filas[0] && mouseY <filas[1]) {
    // areceAlbum=false;
    image(memoria[0], 0, 0, 200, 200);
  }
  if (mouseX>columnas[1] && mouseX<columnas[2] && mouseY>filas[0] && mouseY <filas[1]) {
    //apeceAlbum=false;
    image(memoria[1], 200, 0, 200, 200);
  }
  if (mouseX>columnas[2] && mouseX<columnas[3] && mouseY>filas[0] && mouseY <filas[1]) {
    image(memoria[2], 400, 0, 200, 200);
  }
  if (mouseX>columnas[3] && mouseX<columnas[4] && mouseY>filas[0] && mouseY <filas[1]) {
    image(memoria[3], 600, 0, 200, 200);
  }
  if (mouseX>columnas[0] && mouseX<columnas[1] && mouseY>filas[1] && mouseY <filas[2]) {
    image(memoria[4], 0, 200, 200, 200);
  }
   if(mouseX>columnas[1] && mouseX<columnas[2] && mouseY>filas[1] && mouseY <filas[2]){
    image(memoria[3],200,200,200,200);
  }
 if(mouseX>columnas[2] && mouseX<columnas[3] && mouseY>filas[1] && mouseY <filas[2]){
    image(memoria[5],400,200,200,200);
}
 if(mouseX>columnas[3] && mouseX<columnas[4] && mouseY>filas[1] && mouseY <filas[2]){
    image(memoria[4],600,200,200,200);
 }
   if (mouseX>columnas[0] && mouseX<columnas[1] && mouseY>filas[2] && mouseY <filas[3]) {
    image(memoria[5], 0, 400, 200, 200);
  }
   if(mouseX>columnas[1] && mouseX<columnas[2] && mouseY>filas[2] && mouseY <filas[3]){
    image(memoria[2],200,400,200,200);
  }
 if(mouseX>columnas[2] && mouseX<columnas[3] && mouseY>filas[2] && mouseY <filas[3]){
    image(memoria[1],400,400,200,200);
}
 if(mouseX>columnas[3] && mouseX<columnas[4] && mouseY>filas[2] && mouseY <filas[3]){
    image(memoria[0],600,400,200,200);
 }
}

void draw() {
  if(estado==0){
    rect(800,600,800,600);
  
  }else if(estado==1){
    strokeWeight(2);

    uImagenes();
    for (int i=0; i< cant; i++) {
      for (int l=0; l<cant; l++) {
       rect(i*tam, l*tam, 400, 400);
       fill(relleno);
      }
    }
  }
   
  if (estado==3) {
    rect(800,600,800,600);
  }
  
 
}



void mousePressed() {
if(estado==0){
  estado=1;
} else if(estado==1) {

estado=3;
 }
}
