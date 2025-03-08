// time step = fft time dimension
// at each time step, freq bin is y, magnitude is value at x,y


int xScan = 0;
//int yScan = 0;
int yScan = 0;
int xStep = 0;
int yStep = 0;
int numPoints = 1000;


int pick = 0;
float opacityInc = 0;
int Magnitude = 1;
int x = 0;
int y = 0 ;
int xLen = width;
int yLen = height;
float xDir = 1;
float yDir = 1;
int m = 0;
boolean next;




void setup() {
  size(1000, 1000);
  background(255, 252, 239);
  //populate();
  xStep = int(width / 500);
  yStep = int(height / 200) * 5;
  //updatePos(500);
  print(xStep, yStep);
}


void draw() {
  Magnitude = int(random(1000));
  //updatePos();

  makeLines(xScan, yScan, Magnitude, 500, 1);
  makeLines(xScan, yScan, Magnitude, 200, 2);
  
}

void updatePos(int startingY) {
  //xScan +=xStep;
  //yScan += yStep;
  //for (int n = 0; n < numPoints; n++){
  xScan += xStep;
  //xScan =int(random(width));
  //yScan = int(random(height));
  yScan =  startingY + int(random(yStep)) * ( int( 2 * (random(2)-1)) );
  //print ( ( int( 2 * (random(3)-1)) ));
  //}
}



void makeLines(int x, int y, int mag, int startingY, int pallete) {
  updatePos(startingY);
  //len = (width)+int(random(50));
  xLen = int(random(200));
  yLen = int(random(200));
  

  //next = false;
  if (random(1) < 0.5) {
    xDir = -1;
  } else {
    xDir = 1;
  }
  if (random(1) < 0.5) {
    yDir = -1;
  } else {
    yDir = 1;
  }
  for (m = 0; m < mag; m++) {

    pick = pallete;
    //angle = int(1+random(2));
    opacityInc+=1;
    if (pick == 1) {
      stroke(random(255.), random(38.), random(157.), 1);
    } else {
      stroke(random(20.), random(200.), random(255.), 1); //great blue shade
    }
    strokeWeight(1);
    //if (angle == 1) {
    line(x, y, x + ((xLen)*xDir), y + (random(yLen)*yDir));
  }
  next = true;
}
