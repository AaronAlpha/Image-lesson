//Dynamic section
//Global Variables
float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2;
Boolean widthLarger1 = false, heightLarger1 = false;
Boolean widthLarger2 = false, heightLarger2 = false;



//imageWidthRatio = 0.0, imageHeightRatio = 0.0, picWidthAdjusted, picHeightAdjusted;  
PImage pic1, pic2;



void setup() {
  size(750, 500); //Landscape
  
  //Population of image
  pic1 = loadImage("../Ayrton Senna The Best.jpg"); //Dimensions: width = 1791; height = 1396 (Landscape)
  pic2 = loadImage("../Randy Johnson.jpg"); //Dimensions: width = 595; height = 743 (Portrait)
  //Notes: Dimensions are found in the image file / Right Click / Properties / Details
  //Algorithm: Find the larger dimension for aspect ratio (comparison of two numbers)
  //image 1's dimensions below
  int picWidth1 = 1791;
  int picHeight1 = 1396;
  //image 2's dimensions below
  int picWidth2 = 595;
  int picHeight2 = 743;
  
  
  if (picWidth1 >= picHeight1) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension1 = picWidth1;
  imageSmallerDimension1 = picHeight1;
  widthLarger1 = true;
  } else {
  //False if Portrait
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;  
  heightLarger1 = true;
  }; //End image dimension comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger1, heightLarger1);
  
  
  if (picWidth2 >= picHeight2) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
  } else {
  //False if Portrait
  imageLargerDimension1 = picHeight1;
  imageSmallerDimension1 = picWidth1;  
  heightLarger2 = true;
  }; //End image dimension comparison
  println(imageSmallerDimension1, imageLargerDimension1, widthLarger2, heightLarger2);
  
  
  
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ELseIF-ELSE
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
  imageX1 =width*0; //smallest width of the image is the width*0
  imageY1 = height*0; //smallest height of the image is the height*0
  imageWidth1 = width-1; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight1 = (height-1)*1/2;
  
  imageX2 =width*0; //smallest width of the image is the width*0
  imageY2 = height*1/2; //smallest height of the image is the height*0
  imageWidth2 = width; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight2 = (height-1)*1/2;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted = imageWidth * imageWidthRatio;
  picHeightAdjusted = imageHeight * imageHeightRatio;
  
  
  //Note: 'println()' also verifies decimal places, compiler will truncate them
  println(imageX, imageY, picWidthAdjusted, picHeightAdjusted);



};

void draw() {
  
  rect(imageX1, imageY1, imageWidth1, imageHeight1); //Background Image 
  rect(imageX2, imageY2, imageWidth2, imageHeight2)
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
