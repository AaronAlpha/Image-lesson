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
float imageX, imageY, imageWidth, imageHeight, picWidthAdjusted, picHeightAdjusted;  
float imageLargerDimension, imageSmallerDimension;
PImage pic;


//Canvas
size(750, 500); //Landscape

//Population
pic = loadImage("../Ayrton Senna The Best.jpg"); //Dimensions: width = 1791; height = 1396
//Notes: Dimensions are found in the image file / Right Click / Properties / Details
//Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
int picWidth = 1791;
int picHeight = 1396;
if (picWidth >= picHeight) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;  
  
}; //End image dimension comparison

picWidthAdjusted =;
picHeightAdjusted =;
imageX =width*0; //smallest width of the image is the width*0
imageY = height*0; //smallest height of the image is the height*0
imageWidth = width-1; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
imageHeight = height-1;

rect(imageX, imageY, imageWidth, imageHeight); //Background Image 
image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image();
