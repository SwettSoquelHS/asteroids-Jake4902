/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.
*/
class Asteroid extends Mover {
  //your code here
  float randX;
  float randY;
  
  
  Asteroid(float x, float y){
    super(x,y);
    speed = (float)((Math.random()*5)+1);
    direction = (float)((Math.random()*360)+1);
    randX = (float)(Math.random()*10);
    randY = (float)(Math.random()*10);
  }
  
  
  void show(){
    float[] xPos = new float[10];
    float[] yPos = new float[10];
    xPos[0] = 0;
    yPos[0] = 10;
    xPos[1] = 10;
    yPos[1] = 0;
    xPos[2] = 0;
    yPos[2] = -10;
    xPos[3] = -10;
    yPos[3] = 0;
    xPos[4] = -5;
    yPos[4] = -5;
    
    
    
    translate(randX,randY);
    fill(150);
    beginShape();
    vertex(xPos[0]+x, yPos[0]+y);
    vertex(xPos[1]+x, yPos[1]+y);
    vertex(xPos[2]+x, yPos[2]+y);
    vertex(xPos[3]+x, yPos[3]+y);
    vertex(xPos[4]+x, yPos[4]+y);
    endShape();
  }
}
