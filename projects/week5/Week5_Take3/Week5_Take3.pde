import controlP5.*;

ControlP5 cp5;

float xSize = 100;
float ySize = 100;
float zSize = 100;
int Complexity = 6;
int path = 0;



void setup() {
  size(500, 500, P3D);
  noStroke();
  cp5 = new ControlP5(this);

  cp5.addSlider("xSize")
    .setPosition(10, 10)
    .setRange(0, 255)
    ;

  cp5.addSlider("ySize")
    .setPosition(10, 25)
    .setRange(0, 255)
    ;

  cp5.addSlider("zSize")
    .setPosition(10, 40)
    .setRange(0, 255)
    ;

cp5.addSlider("Complexity")
     .setPosition(10,55)
     .setRange(1,20)
     .setNumberOfTickMarks(11)
     ;
//cp5.addSlider("path")
//     .setPosition(10,75)
//     .setRange(-10,10)
//     .setNumberOfTickMarks(11)
//     ;
}

void draw() {
  background(0);
  lights();

  pushMatrix();

  //translate(width/2 + sin(frameCount*path*100), height/2, 0); //translate following objects to center
  translate(width/2, height/2, 0); //translate following objects to center
  rotateX(frameCount * 0.01);
  rotateY(frameCount * 0.012);
  rotateZ(frameCount * 0.013);

  for (int i = 0; i <= Complexity; i++) {
    
    pushMatrix();
    rotateX(PI/Complexity * i);
    rotateY(PI/Complexity * i);
    rotateZ(PI/Complexity * i);
    noFill();
    stroke(255);
    box(xSize , ySize, zSize);
    popMatrix();
    /*
    pushMatrix();
    rotateY(PI/divs * i);
    box(ySize, xSize, zSize);
    popMatrix();
    */
  }
  
 
  
  //for (int i = 0; i <= path; i++){
  //  pushMatrix();
  //  translate(250 + (i*10), 0, 0);
  //  popMatrix();
  //}
  
  

  popMatrix();
}
