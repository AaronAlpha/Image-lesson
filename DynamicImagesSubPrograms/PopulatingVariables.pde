float imageX1, imageY1, imageWidth1, imageHeight1, imageLargerDimension1, imageSmallerDimension1, imageWidthRatio1 = 0.0, imageHeightRatio1 = 0.0, picWidthAdjusted1, picHeightAdjusted1;
float imageX2, imageY2, imageWidth2, imageHeight2, imageLargerDimension2, imageSmallerDimension2, imageWidthRatio2 = 0.0, imageHeightRatio2 = 0.0, picWidthAdjusted2, picHeightAdjusted2;
Boolean widthLarger1 = false, heightLarger1 = false;
Boolean widthLarger2 = false, heightLarger2 = false;  


void populatingVariables () { //the following code is now 'populatingVariables' block of code, used to like make it more readable/'smaller' 
  
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
  
  //Aspect Ratio
  //Note: single line IFs can be summarized into IF-ELSE or IF-ELseIF-ELSE
  //Computer chooses which formulae to execute:
  if(widthLarger1 == true) imageWidthRatio1 = imageLargerDimension1 / imageLargerDimension1;
  if(widthLarger1 == true) imageHeightRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if(heightLarger1 == true) imageWidthRatio1 = imageSmallerDimension1 / imageLargerDimension1;
  if(heightLarger1 == true) imageHeightRatio1 = imageLargerDimension1 / imageLargerDimension1;
  
  
  
  
  if (picWidth2 >= picHeight2) { //image dimension comparison
  //True if Landscape or square
  imageLargerDimension2 = picWidth2;
  imageSmallerDimension2 = picHeight2;
  widthLarger2 = true;
  } else {
  //False if Portrait
  imageLargerDimension2 = picHeight2;
  imageSmallerDimension2 = picWidth2;  
  heightLarger2 = true;
  }; //End image dimension comparison
  println(imageSmallerDimension2, imageLargerDimension2, widthLarger2, heightLarger2);
  
  if(widthLarger2 == true) imageWidthRatio2 = imageLargerDimension2 / imageLargerDimension2;
  if(widthLarger2 == true) imageHeightRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if(heightLarger2 == true) imageWidthRatio2 = imageSmallerDimension2 / imageLargerDimension2;
  if(heightLarger2 == true) imageHeightRatio2 = imageLargerDimension2 / imageLargerDimension2;
  //Note:
  //Answers must be 1.0 and between 0 and 1 (decimal) -> as in '1:n' ratio, where the 'imageLargerDimension' will be = 1
  //Ratio 1.0 similar to style="width:100%" (websites) -> as in  '1:n' ratio, where the 'imageSmallerDimension' will be = n(value between 0-1)
  //Ratio of 0-1 similar to style="height:auto" 
  
  
  
  
  //Population of Rect()  
  imageX1 =width*1/4; //smallest width of the image is the width*0
  imageY1 = height*0; //smallest height of the image is the height*0
  imageWidth1 = (width-1)*1/2; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight1 = (height-1)*1/2;
  
  imageX2 =width*1/4; //smallest width of the image is the width*0
  imageY2 = height*1/2; //smallest height of the image is the height*0
  imageWidth2 = (width-1)*1/2; //Canvas (0,0) means point doesnt match to rectangle, hence missing outline on two sides 
  imageHeight2 = (height-1)*1/2;
  
  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted1 = imageWidth1 * imageWidthRatio1;
  picHeightAdjusted1 = imageHeight1 * imageHeightRatio1;
  
  //Note: 'println()' also verifies decimal places, compiler will truncate them
  println(imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1);


  //Adjuested image variables for Aspect Ratio: (entire image will be smaller due to aspect ratio)
  picWidthAdjusted2 = imageWidth2 * imageWidthRatio2;
  picHeightAdjusted2 = imageHeight2 * imageHeightRatio2;
  
  //Note: 'println()' also verifies decimal places, compiler will truncate them
  println(imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2);


  
  
}//End populatingVariables
