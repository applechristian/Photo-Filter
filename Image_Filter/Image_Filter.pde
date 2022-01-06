//Christian Lee
//Image Filter
//4/3/2020

boolean saved = false;
boolean image = true;
PImage img2;
PImage img;
int mode = 0;
int loops = 1;
int blackValue = -16000000;
int brightnessValue = 60;
int whiteValue = -13000000;
int row = 0;
int column = 0;
String imgFileName = "yosemite";
String fileType = "jpg";


void settings(){
 img = loadImage("yosemite.jpg");
 size(img.width, img.height);
}

void setup(){
  surface.setResizable(true);
  surface.setSize(img.width, img.height);
  image(img, 0, 0, width, height);  //sets up certain variables for the sortRow and sortColumn variables
}


void draw(){
  if(image == true){
    picture();
  }
  
  keyPressed();  
}

void picture(){
  image(img, 0, 0); 
}
