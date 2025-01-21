void setup() {
  size(1000,1000);
  background(241, 237, 243);
  noStroke();
  
  //for (int i = 0; i < (height/2); i++) {
  //  fill((i/500.) * 255) ;
  //gridPoint(width/2, i, i);
  //}
};

void draw(){
  //background(0);
  //int colorVal []= {9, 230, 239};
  int i = 1;
  while (i < (height/2)) {
  i++;
  int index = int(random(4));
  fill(colorArray[index][0], colorArray[index][1], colorArray[index][2]); 
  //gridPoint(random(i + (width/6)), random(i + (height/3)), random(3));
  //gridPoint(random(i + (width/6)), random(i + (height/3)), random(3));
  gridPoint(random(i + (width/6)), random(i + (height/6)), random(3));
  //stroke((colorArray[index][0]), (colorArray[index][1]), (colorArray[index][2]));
  //line(random(width/2/i), random(width/2/i), (random((height/2)-i)), random((width/2)-i));
  //line(random(width/i), random(width/i), random(height/i), random(width/i));
  };
  noLoop();
  
}

void gridPoint(float x, float y, float s){
  //upperleft
  circle(x,y,s);
  circle(x+5,y,s);
  circle(x-5,y,s);
  circle(x,y+5,s);
  circle(x,y-5,s);

  //upper right
  circle(width-x, y, s);
  circle(width-x+3, y, s);
  circle(width-x-3, y, s);
  circle(width-x, y+3, s);
  circle(width-x, y-3, s);
  
  
  circle(width - x, width - y, s);
  
  circle(x, width - y, s);
  circle(x-2, width - y, s);
  circle(x+2, width - y, s);
  circle(x+2, width - y+2, s);
  circle(x+2, width - y -2, s);
  
};
//void gridPoint(float x, float y, float x1, float x2){
//  line(x,y,x1, x2);
//  line(width - x,y,x1, x2);
//  line(x,height - y,x1, x2);
//  line(width - x,height - y,x1, x2);
//};


// function for making color, 4 color options - randomly select
//void makeColor(int x){
  int[][] colorArray = {
    {9, 230, 239},
    {9, 111, 239},
    {92, 207, 191},
    {78, 42, 232}
  
  };
   
    
  
 


 
