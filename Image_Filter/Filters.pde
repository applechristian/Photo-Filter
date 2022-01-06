void filter1(){
  loadPixels();
    for(int x = 0; x < width; x++){
         for(int y = 0; y < height; y++){
           int c = x + y * width;
           float r = red(img.pixels[c]);
           float g = green(img.pixels[c]);
           float b = blue(img.pixels[c]);
           pixels[c] = color(g*3, r, b);   //this algorithm swaps the green and red values and multiplies the red value by three creating a red tint
         }
       }
       updatePixels();
}

void filter2(){
  loadPixels();
    for(int x = 0; x < width; x++){
         for(int y = 0; y < height; y++){
           int c = x + y * width;
           float r = red(img.pixels[c]);
           float g = green(img.pixels[c]);
           float b = blue(img.pixels[c]);
           pixels[c] = color(g, r, b*4);  //this algorithm also swaps the green and red values and multiplies the blue value by four creating a strong blue tint
         }
       }
       updatePixels();
}

void filter3(){
  loadPixels();
   for(int x = 0; x < width; x++){
         for(int y = 0; y < height; y++){
           int c = x + y * width;
           float b = brightness(img.pixels[c]);
           if(b > 150){
             pixels[c] = color(255);
           }
           else{
             pixels[c] = color(0);  //this algorithm makes pixels with a brightness less than 150 black and pixels greater than 150 white
           }
        }
   }
   updatePixels();
}

void filter4(){
   while(column < img.width-1) {
    println("Sorting Column " + column);
    img.loadPixels(); 
    sortColumn();
    column++;
    img.updatePixels();  
  }
  
  // loop through rows
  while(row < img.height-1) {
    println("Sorting Row " + column);
    img.loadPixels(); 
    sortRow();
    row++;
    img.updatePixels();  //calls the sortRow and sortColumn functions to reorder the pixels of the image according to the black values 
  }
 }
  
void filter5(){
    mode = 1;
  while(column < img.width-1) {
    println("Sorting Column " + column);
    img.loadPixels(); 
    sortColumn();
    column++;
    img.updatePixels();
  }
  
  // loop through rows
  while(row < img.height-1) {
    println("Sorting Row " + column);
    img.loadPixels(); 
    sortRow();
    row++;
    img.updatePixels();  //calls the sortRow and sortColumn functions to reorder the pixels of the image according to the brightness of each pixel
  }
}

void filter6(){
  image = false;
  for(int i = 0; i < 100; i++){
  float x = random(width);
  float y = random(height);
  color c = img.get(int(x),int(y));
  fill(c);
  noStroke();
  ellipse(x, y, 10, 10);  //redraws image by spawning random ellipses on the screen
  } 
}

void noFilter(){
  image(img, 0, 0);  //returns to original image
}
