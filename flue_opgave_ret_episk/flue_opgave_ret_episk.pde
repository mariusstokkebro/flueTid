//laver listen hvor hver ny flue der bliver lavet er i.
ArrayList<Flue> flueListe = new ArrayList<Flue>();
// laver hvor stor skærmen skal være
void setup(){
  size(500,500);
}

void draw(){
  clear();
  background(100);
 //gør så arraylisten kan lave en nye fluer.
  for(int i=0; i<flueListe.size(); i++){
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
    
  
  }
}
//laver en stor flue når man trykker på e, et random sted.
void keyPressed(){
  if(key =='e'){
  flueListe.add(new Flue(random(100,400),random(100,400),2));
  }
}
//laver fluer der hvor din mus er når du klikker
void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY,1));
}
//laver skabelonen til alle fluer
/////////////////////////////////////////////////////////
class Flue{
 
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  float size;
  float speed = 0.5;
  //gør positionerne og vinklen random
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    vinkel     = random(0,2*PI);
  }
  //laver de variabler man kan ændre på når man laver en ny slags flue.
  Flue(float a, float b,float c){
    positionX = a;
    positionY = b;
    size = c;
    vinkel    =random(0,2*PI);
  }
  //gør så fluerne bevæger sig
  void flyt(){
    distanceFlyttet = distanceFlyttet + speed;
 
if ((cos(vinkel) * (distanceFlyttet*size)  + positionX) > width ||
      (cos(vinkel) * (distanceFlyttet*size)  + positionX) < 0) {
      speed *= -1;
    }
     if ((sin(vinkel) * (distanceFlyttet*size)  + positionY) > height ||
      (sin(vinkel) * (distanceFlyttet*size)  + positionY) < 0) {
      speed *= -1;
    }
   
      println(positionX);
      println(vinkel);
  
  }
//tegner fluen 
  void tegnFlue(){
   
   pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0);
      scale(size);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
   popMatrix();
  } 
}
//////////////////////////////////////////////////////
