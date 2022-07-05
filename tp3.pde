int cant, tam, newMemoria;
PImage taylor, zayn, bad, queen, imagine, rauw;
PImage []memoria = new PImage[6];
int relleno;


void setup() {
  size(800, 600);
  cant= 4;
  tam= 800/cant;
  newMemoria=5;
  memoria [0]= loadImage("taylorSwift.jpg");
  memoria [1]= loadImage("zayn.jpg");
  memoria [2]=  loadImage("badBunny.jpg");
  memoria [3]=  loadImage("queen.jpg");
  memoria [4]=  loadImage("imagineDragons.jpg");
  memoria [5]= loadImage("rauw.jpg");
  relleno=230;
}

void draw() {
  for (int i=0; i< cant; i++) {
    for (int l=0; l<cant; l++) {
      rect(i*tam, l*tam, 400, 400);
      ubicarImagenes();
      fill(relleno);
      rect(0, 0, 200, 200);
      rect(200, 0, 200, 200);
      rect(400, 0, 200, 200);
      rect(600, 0, 200, 200);
    }
  }
}
void mousePressed() {
  if ( mouseX>=0 & mouseY>=0 & mouseX<=0+200 & mouseY <=0+200)
    image(memoria[0], 0, 0, 200, 200);
}
void mouseClicked() {
  if (mouseX>=400 & mouseY>=0 & mouseX<=400+200 & mouseY<=0+200)
    image(memoria[2], 400, 0, 200, 200);
}
