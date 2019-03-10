class Bullet extends Mover{
  private int live;
  int num = 1;
  
  Bullet(float x, float y){
    super(x,y);
    live = 100;
  }
  
  Bullet(float x, float y, float speed, float direction){
    super(x,y, speed, direction);
    live = 100;
  }
  
  void update(){
    setSpeed(speed*5*num);
    super.update();
    live--;
    num++;
  }
  
  void show(){
    if(live > 0){
      ellipse(x,y,10,10);
    }
  }
  
  boolean isAlive(){
    if(live > 0){
      return true;
    }
    return false;
  }
}
