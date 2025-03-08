
// goal is to read in array

//y values will be a frequency bin (the index #) 
//with a certain magnitude, which will control have many time the makeLines Loop will run






//int xzx[] = {};
//void populate(){
  
  
//}


//int[] myArray = new int[10];
//for (int i = 0; i < myArray.length; i++) {
//  myArray[i] = 0;
//}


//int cols = 10;
//int rows = 10;
//int[][] myArray = new int[cols][rows];

//// Two nested loops allow us to visit every spot in a 2D array.
//// For every column I, visit every row J



//for (int i = 0; i < cols; i++) {
//  for (int j = 0; j < rows; j++) {
//    myArray[i][j] = int(random(height));
//  }
//}



int cols = width;
int rows = height;
int i = 0;
int j = 0;

// Declare 2D array
int[][] myArray = new int[cols][rows];

// Initialize 2D array values

void populate(){

for ( i = 0; i < cols; i++) {
  for ( j = 0; j < rows; j++) {
    myArray[i][j] = int(random(height));
    //print(myArray[i][j]);
  }
}

}
