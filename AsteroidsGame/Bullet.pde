class Bullet extends Mover{
  private int live;
  
  Bullet(){
    super(0,0);
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
