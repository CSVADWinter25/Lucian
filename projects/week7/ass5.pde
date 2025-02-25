

float r = random(100000);
float value = 0;
float pValue = 0;
float angle = 0;

void setup() {
  size(1000, 1000);
  background(255, 252, 239);
//  for (int i = 0; i < width; i++) {
//    value = random(1);
//    stroke(value * 255.);
//    line(i, 0, i, height/2);
///*
//    if (i != 0) {
//      stroke(255, 0, 0);
//      line(i, map(value, 0, 1, height, 0), i-1, map(pValue, 0, 1, height, 0));
//    }
//    pValue = value;
//    */
//  }
}

void draw() {
  value = 0;
  pValue = 0;
  angle = 1;
  float opacityInc = 0;
  if (mousePressed){
  for (int i = 0; i < width; i++) {
      //value = random(1);
      angle = 1+random(2);
      opacityInc+=1;
      stroke(random(20.), random(255.), random(228.), 1);
      strokeWeight(1);
      //if (angle == 1) {
      line(random(width-mouseX), random(height+mouseY), mouseX, mouseY);
      //}
      //else if (angle ==2){
      //line(i/mouseX, height-mouseY, mouseX, mouseY);
      //}
      
    }
  }
  else{
    opacityInc = 0;
  }
    
    //else{
    //stroke(0., random(255.), random(255.));
    //}
    //line(i, height-mouseY, mouseX, mouseY);

  }
