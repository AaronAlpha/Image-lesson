void imageDraw() {
  
   rect(imageX1, imageY1, imageWidth1, imageHeight1); //Background Image 
  rect(imageX2, imageY2, imageWidth2, imageHeight2);
  //image(pic, imageX, imageY, imageWidth, imageHeight); //original picture/image in background 'rectangle' of canvas
  image(pic1, imageX1, imageY1, picWidthAdjusted1, picHeightAdjusted1); //adjusted picture/image in background 'rectangle' of canvas, manipulated by a created aspect ratio
  image(pic2, imageX2, imageY2, picWidthAdjusted2, picHeightAdjusted2); //adjusted picture/image in background 'rectangle' of canvas, manipulated by a created aspect ratio 
  
  
  
}//End imageDraw
