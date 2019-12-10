class fly{
 float xpos;
 float ypos;
 float size;
 
 fly(float xposTemp,float yposTemp, float tempSize){
   xpos = xposTemp;
   ypos = yposTemp;
   
   size = tempSize;
   
 }
  void display(){
    image(img,xpos,ypos,size,size);   
  }
  void move(){
   
    xpos+=randomGaussian()*5; 
    ypos+=randomGaussian()*5;
  }
  
}
