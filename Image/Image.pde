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
Boolean widthLarger = false, heightLarger = false;


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
  widthLarger = true;
} else {
  //False if Portrait
  imageLargerDimension = picHeight;
  imageSmallerDimension = picWidth;  
  heightLarger = true;
}; //End image dimension comparison
println(imageSmallerDimension, imageLargerDimension, widthLarger, heightLarger);

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

imageX =width*0; //smallest width of the image is the width*0
imageY = height*0; //smallest height of the image is the height*0
imageWidth = width-1; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
imageHeight = height-1;

//Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
float picWidthAdjusted, picHeightAdjusted; 


//Note: 'println()' also verifies decimal places, compiler will truncate them

//picWidthAdjusted =;
//picHeightAdjusted =;


rect(imageX, imageY, imageWidth, imageHeight); //Background Image 
//image(pic, imageX, imageY, picWidthAdjusted, picHeightAdjusted);
//image();
