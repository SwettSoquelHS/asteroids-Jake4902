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
    speed = (float)((Math.random()*1)+.1);
    direction = (float)(Math.random()*(360));
    
  }
  
  
  
  void show(){
    float[] xPos = new float[10];
    float[] yPos = new float[10];
    
    
    pushMatrix();
    translate(x, y);
    xPos[0] = 0+x;
    yPos[0] = 10+y;
    xPos[1] = 10+x;
    yPos[1] = 0+y;
    xPos[2] = 0+x;
    yPos[2] = -10+y;
    xPos[3] = -10+x;
    yPos[3] = 0+y;
    
    
    
    fill(150);
    beginShape();
    vertex(xPos[0], yPos[0]);
    vertex(xPos[1], yPos[1]);
    vertex(xPos[2], yPos[2]);
    vertex(xPos[3], yPos[3]);
    endShape();
    popMatrix();
    
    if(x > width || x < 0){
      direction = direction+180;
    }
    if(y > height || y < 0){
      direction = direction+180;
    }
  }
}
