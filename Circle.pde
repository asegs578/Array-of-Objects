class Circle {
  float xPos;
  float yPos;
  int diam;
  int cirColor;
  int alphaState;
  
  Circle(float tempxPos, float tempyPos, int tempdiam, int tempcirColor, int tempalphaState){
    xPos=tempxPos;
    yPos=tempyPos;
    diam=tempdiam;
    cirColor=tempcirColor;
    alphaState=tempalphaState;
    
  }

  
  void display(){
   fill(cirColor, alphaState);
   noStroke();
   ellipse(xPos, yPos, diam, diam);
  }
  
  void mouse(){
    float distance=dist(xPos, yPos, mouseX, mouseY);
    if( distance <=40){
      alphaState++;
    }
    if(distance>=40){
      alphaState--;
      if(alphaState<=50){
        alphaState=50;
      }
    }
  }
  
}
