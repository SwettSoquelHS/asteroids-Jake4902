//note that this class does NOT *NEED* to extend Mover but can if you like
class Star {
  int randX;
  int randY;
  
  Star(){
    randX = (int)((Math.random()*width)+1);
    randY = (int)((Math.random()*height)+1);
  }
  void show(){
    fill(0,0,250);
    ellipse(randX, randY,3,3);
  }
}
