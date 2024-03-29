//Dynamic section
//Global Variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio = 0.0, imageHeightRatio = 0.0, picWidthAdjusted, picHeightAdjusted;  
float imageLargerDimension, imageSmallerDimension;
PImage pic;
Boolean widthLarger = false, heightLarger = false;


void setup() {
  size(750, 500); //Landscape
  
  //Population of image
  pic = loadImage("../Ayrton Senna The Best.jpg"); //Dimensions: width = 1791; height = 1396
  //Notes: Dimensions are found in the image file / Right Click / Properties / Details
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
  int picWidth = 1791;
  int picHeight = 1396;
  if (picWidth >= picHeight) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension = picWidth;
  imageSmallerDimension = picHeight;
  widthLarger = true;
  } else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;  
  heightLarger = true;
  }; //End image dimension comparison
  println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger);
  
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ELSE IF-ELSE
  //Computer chooses which formulae to execute:
  if(widthLarger == true) imageWidthRatio = imageLargerDimension / imageLargerDimension;
  if(widthLarger == true) imageHeightRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageWidthRatio = imageSmallerDimension / imageLargerDimension;
  if(heightLarger == true) imageHeightRatio = imageLargerDimension / imageLargerDimension;
  //Note:
  //Answers must be 1.0 and between 0 and 1 (decimal) -> as in '1:n' ratio, where the 'imageLargerDimension' will be = 1
  //Ratio 1.0 similar to style="width:100%" (websites) -> as in  '1:n' ratio, where the 'imageSmallerDimension' will be = n(value between 0-1)
  //Ratio of 0-1 similar to style="height:auto" 
  
  //Population of Rect()  
  imageX =width/2 - (width/2)/2; //smallest width of the image is the width*0
  imageY = height/2; //smallest height of the image is the height*0
  imageWidth = height; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight = height;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  
  
  //Note: 'println()' also verifies decimal places, compiler will truncate them
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);



};

void draw() {
  
  //rect(imageX, imageY, imageWidth, imageHeight); //Background Image 
  //image(pic, imageX, imageY, imageWidth, imageHeight); //original picture/image in background 'rectangle' of canvas
  image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted); //adjusted picture/image in background 'rectangle' of canvas, manipulated by a created aspect ratio  
  
  
};

void keyPressed() {
  
};

void mousePressed() {
  
};

//End MAIN program



//Static(section) to copy to dynamic


//Canvas


//Population
