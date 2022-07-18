//Dynamic section
////Global Variables

//void setup() {
  
//};

//void draw() {
  
//};

//void keyPressed() {
  
//};

//void mousePressed() {
  
//};

////End MAIN program



//Static(section) to copy to dynamic
float imageX, imageY, imageWidth, imageHeight;  
PImage pic;

//Canvas
size(750, 500); //Landscape

//Population
pic = loadImage("../Ayrton Senna The Best.jpg"); //Dimensions: width = 1791; height = 1396
imageX =width*0; //smallest width of the image is the width*0
imageY = height*0; //smallest height of the image is the height*0
imageWidth = width-1; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
imageHeight = height-1;

rect(imageX, imageY, imageWidth, imageHeight); //Background Image 
image(pic, imageX, imageY, imageWidth, imageHeight);
//image();
