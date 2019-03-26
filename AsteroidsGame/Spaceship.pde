  /*
  Spaceship class
    Should extend Mover class and implement show.
    You may add additional methods to this class, for example "rotate" and "accelerate" 
    might be useful.
*/
ArrayList<Bullet> myBullet = new ArrayList<Bullet>();

class Spaceship extends Mover { 
  
  Spaceship(float x, float y){super(x,y);}
    
  Spaceship(float x, float y, float speed, float direction) {
    super(x,y,speed,direction);
    }
    
  void update(){
    super.update();
    if(myBullet != null){
      for(int i = 0; i < myBullet.size(); i++){
        myBullet.get(i).update();
      }
    }
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
    if(myBullet != null){
      for(int i = 0; i < myBullet.size(); i++){
        myBullet.get(i).show();
      }
    }
   
    
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
  
  void fire(){
    Bullet newBullet = new Bullet(x,y,speed,direction);
    myBullet.add(newBullet);
 }
}
