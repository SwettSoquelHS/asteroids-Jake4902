/*
  Asteroid class
    Should extend Mover class and implement show.
    
    Initially, your asteroid may just be a simple circle or square
    but the final program should use "beginShap(), vertex(), and endShape()"
    to render the asteroid.
*/
class Asteroid extends Mover {
  //your code here
  float randX = (float)(Math.random()*640);
  float randY = (float)(Math.random()*400);
  
  Asteroid(float x, float y){
    super(x,y);
    speed = (float)((Math.random()*1.5)+.1);
    direction = (float)(Math.random()*(360));
    
  }
  
  
  
  void show(){
    float[] xPos = new float[10];
    float[] yPos = new float[10];
    if(x+randX > width || x+randX < 0){
      direction = direction+180;
    }
    if(y+randY > height || y+randY < 0){
      direction = direction+180;
    }
    
    //pushMatrix();
    //translate(randX, randY);
    /*xPos[0] = 0+randX;
    yPos[0] = 10+randY;
    xPos[1] = 10+randX;
    yPos[1] = 0+randY;
    xPos[2] = 0+randX;
    yPos[2] = -10+randY;
    xPos[3] = -10+randX;
    yPos[3] = 0+randY;
    xPos[4] = -5+randX;
    yPos[4] = -5+randY;
    
    
    
    fill(150);
    beginShape();
    vertex(xPos[0]+x, yPos[0]+y);
    vertex(xPos[1]+x, yPos[1]+y);
    vertex(xPos[2]+x, yPos[2]+y);
    vertex(xPos[3]+x, yPos[3]+y);
    vertex(xPos[4]+x, yPos[4]+y);
    endShape();
    */
    ellipse(randX+x,randY+y,20,20);
    
    //popMatrix();
  }
}
