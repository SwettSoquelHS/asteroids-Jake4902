class Bullet extends Mover{
  private int live;
  
  Bullet(float x, float y){
    super(x,y);
    live = 100;
  }
  
  Bullet(float x, float y, float speed, float direction){
    super(x,y, speed+1, direction);
    live = 100;
  }
  
  void update(){
    super.update();
    live--;
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
