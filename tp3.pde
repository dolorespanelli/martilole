int cant, tam, newMemoria;
PImage taylor, zayn, bad, queen, imagine, rauw;
PImage []memoria = new PImage[6];
int relleno;
boolean apareceAlbum;
String estado;



void setup() {
  size(800, 600);
  cant= 4;
  colorMode(RGB);
  tam= 800/cant;
  newMemoria=5;
  taylor=loadImage("taylorSwift.jpg");
  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("zayn.jpg");
  memoria [2]=  loadImage("badBunny.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("imagineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
  relleno=230;
  apareceAlbum= true;
  estado= "inicio";
}

void draw() {
  if (estado.equals("inicio")) {
    for (int i=0; i< cant; i++) {
      for (int l=0; l<cant; l++) {
        rect(i*tam, l*tam, 400, 400);

        fill(relleno);
        if (mousePressed  /*( mouseX>0 & mouseY>0 & mouseX<0+200 & mouseY <0+200)*/) {

          apareceAlbum=false;
        }

        if (apareceAlbum) {
          
          rect(0, 0, 200, 200) ;
        }
        if (mousePressed==true  && (mouseX>200 & mouseY>0 & mouseX<200+200 & mouseY>0+200)) {
          if (apareceAlbum) {
            fill(200, 30, 0);
            rect(200, 0, 200, 200) ;
         
          apareceAlbum=false;
        } }
        


        /*rect(200, 0, 200, 200);
         rect(400, 0, 200, 200);
         rect(600, 0, 200, 200);*/
        uImagenes();
        capa1();
      }
    }
  }
}



/*void mouseClicked() {
 if ( mouseX>=0 & mouseY>=0 & mouseX<=0+200 & mouseY <=0+200){
 memoria []=} loadImage("taylorSwift.jpg");
 apareceAlbum= !apareceAlbum;
 }
 if(apareceAlbum){
 memoria[0];
 }
 }*/
