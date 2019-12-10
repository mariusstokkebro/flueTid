
ArrayList <fly>  Fly = new ArrayList<fly>(); 
PImage img;
void setup(){
  size(1000,1000);
  img = loadImage("fly2.jpg");
  
}

void draw(){
  clear();
  for (int i = 0; i < Fly.size(); i++){
    Fly.get(i).move();
    Fly.get(i).display();
}

}
void mouseReleased(){
   Fly.add(new fly(mouseX,mouseY,50)); 
 
}
void keyPressed(){
  if (key == 'b'){
    Fly.add(new fly(random(100,900),random(100,900),random(50,200)));
  }
  if (key == 'a'){
    Fly.add(new fly(random(100,900),random(100,900),50));
  }
}
