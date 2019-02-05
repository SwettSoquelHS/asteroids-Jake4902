/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.
*/
class Asteroid extends Mover {
  //your code here
  
  
  Asteroid(float x, float y){
    super(x,y);
    speed = (float)((Math.random()*1.5)+.1);
    direction = (float)(Math.random()*(360));
  }
  
  
  
  void show(){
    float[] xPos = new float[10];
    float[] yPos = new float[10];
    float wid = width/2;
    float het = height/2;
    if(x < -width/2 || x > width/2){
      direction = direction+180;
    }
    if(y < -height/2 || y > height/2){
      direction = direction+180;
    }
    xPos[0] = 0+wid;
    yPos[0] = 10+het;
    xPos[1] = 10+wid;
    yPos[1] = 0+het;
    xPos[2] = 0+wid;
    yPos[2] = -10+het;
    xPos[3] = -10+wid;
    yPos[3] = 0+het;
    xPos[4] = -5+wid;
    yPos[4] = -5+het;
    
    
    
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
