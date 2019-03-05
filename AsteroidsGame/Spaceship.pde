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
    
  void update(){
    super.update();
  }
  
  void show(){
    pushMatrix();
    translate(x,y);
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
  
  void addSpeed(float add){
    if(speed < 3.0){
      speed += add;
    }else if(speed < 0){
      speed = 0;
    }
  }
  
  
  void subtractSpeed(float minus){
    if(speed > 0){
      speed -= minus;
    }
  }
  
  void updateDirection(float addDirection){
    if(speed < 2.0){
       direction += addDirection; 
    }else if(speed >= 1.5){
       direction += (addDirection*4);
    }
  }
}

/*void fire(){
  if(myBullet != null && !myBullet.isAlive()){
   myBullet = new Bullet(0,0); //Make sure you have declared a Bullet myBullet for the spaceship
  }
 }
 */
