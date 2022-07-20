//Dynamic section
//Global Variables
PImage pic1, pic2;  




void setup() {
  size(750, 500); //Landscape
  
  populatingVariables(); //this one line links to all the code in the tab 'PopulatingVariables' and runs it ONLY once
  
  imageDraw();//this line again links to all code in tab 'ImageDraw' and runs it ONLY once
};//End Setup




void draw() {//NOTE: DRAW loop repeats 60 times per second, static images should be in SETUP, "system resources"

  //Empty DRAW loop, must be present for JAVA compiler
  //compilers generally NEED 'void draw', but doesnt necessarily mean its 'needed' to be filled
  
 
  
}; //End Draw

void keyPressed() {//is an event listener that performs operations when keys from a keyboard, are pressed on 
  
  rect(0, 0, width, height);
  
}; // End keyPressed




void mousePressed() {
  
  
  
  
}; // End mousePressed

//End MAIN program



//Static(section) to copy to dynamic


//Canvas


//Population
