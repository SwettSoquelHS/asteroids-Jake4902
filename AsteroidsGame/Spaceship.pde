  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
class Spaceship extends Mover { 
  
  Spaceship(float x, float y){super(x,y);}
    
  Spaceship(float x, float y, float speed, float direction) {
    super(x,y,speed,direction);
    }
  
  void show(){
    pushMatrix();
    translate(width/2,height/2);
    rotate(radians(direction));
    fill(155);
    scale(.7);
    ellipse(0,0,30,35);
    rect(-5,17,8,20);
    rect(-5,-38,8,20);
    rect(-5,-38,15,5);
    rect(-5,33,15,5);
    popMatrix();
  }
  
  void updateSpeed(float addSpeed){
    speed += addSpeed;
    if(speed < 0){
      speed = 0;
    }
  }
  
  void updateDirection(float addDirection){
    direction += addDirection;
  }
}
