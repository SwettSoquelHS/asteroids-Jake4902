/* * * * * * * * * * * * * * * * * * * * * * *
 Class variable declarations here
 */
Spaceship ship;

Star centauri[];

Asteroid rocks[];


/*
  Track User keyboard input
 */
boolean ROTATE_LEFT;  //User is pressing <-
boolean ROTATE_RIGHT; //User is pressing ->
boolean MOVE_FORWARD; //User is pressing ^ arrow
boolean SPACE_BAR;    //User is pressing space bar
boolean SLOW_DOWN;    //User is pressing \/(down) arrow
int bullNums = 0;

  
/* * * * * * * * * * * * * * * * * * * * * * *
  Initialize all of your variables and game state here
 */
public void setup() {
  size(640, 400);
  ship = new Spaceship(width/2,height/2);
  
  centauri = new Star[150];
  for(int i = 0; i < centauri.length; i++){
    centauri[i] = new Star();
  }
  
  rocks = new Asteroid[10];
  for(int i = 0; i < rocks.length; i++){
    float randX = (float)(Math.random()*width);
    float randY = (float)(Math.random()*height);
    rocks[i] = new Asteroid(randX,randY);
  }
  
  
  //initialize your asteroid array and fill it
  
  //initialize ship
  
  //initialize starfield
}


/* * * * * * * * * * * * * * * * * * * * * * *
  Drawing work here
 */
public void draw() {
  //your code here
  background(0);
  
  
  
  
  for(int i = 0; i < centauri.length; i++){
    centauri[i].show();
  }
  ship.update();
  ship.show();
  
  checkOnAsteroids();
  for(int i = 0; i < rocks.length; i++){
    rocks[i].update();
    rocks[i].show();
    
  }
  
  
  
  
  
  if(ROTATE_LEFT){
   ship.updateDirection(-1.0);
  }
  if(ROTATE_RIGHT){
    ship.updateDirection(1.0);
  }
  if(MOVE_FORWARD){
    ship.addSpeed(.1);
  }
  if(SLOW_DOWN){
    ship.subtractSpeed(.1);
  }
  if(SPACE_BAR){
      bullNums++;
   }
   for(int i = 0; i < bullNums; i++){
     ship.fire();
   }
  
  //Draw Starfield first 
  //TODO: Part I
  
  //Check bullet collisions
  //TODO: Part III or IV - for not just leave this comment

  //TODO: Part II, Update each of the Asteroids internals

  //Check for asteroid collisions against other asteroids and alter course
  //TODO: Part III, for now keep this comment in place

  //Draw asteroids
  //TODO: Part II

  //Update spaceship
  //TODO: Part I
  
  //Check for ship collision agaist asteroids
  //TODO: Part II or III

  //Draw spaceship & and its bullets
  //TODO: Part I, for now just render ship
  //TODO: Part IV - we will use a new feature in Java called an ArrayList, 
  //so for now we'll just leave this comment and come back to it in a bit. 
  
  //Update score
  //TODO: Keep track of a score and output the score at the top right
}



/* * * * * * * * * * * * * * * * * * * * * * *
  Record relevent key presses for our game
 */
void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT) {
      ROTATE_LEFT = true;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = true;
    } else if (keyCode == UP) {
      MOVE_FORWARD = true;
    } else if (keyCode == DOWN) {
      SLOW_DOWN = true;
    }
  }

  //32 is spacebar
  if (keyCode == 32) {  
    SPACE_BAR = true;
  }
}



/* * * * * * * * * * * * * * * * * * * * * * *
  Record relevant key releases for our game.
 */
void keyReleased() {  
  if (key == CODED) { 
    if (keyCode == LEFT) {
      ROTATE_LEFT = false;
    } else if ( keyCode == RIGHT ) {
      ROTATE_RIGHT = false;
    } else if (keyCode == UP) {
      MOVE_FORWARD = false;
    } else if (keyCode == DOWN) {
      SLOW_DOWN = false;
    }
  }
  if (keyCode == 32) {
    SPACE_BAR = false;
  }
}


void checkOnAsteroids(){
  for(int i = 0; i < rocks.length; i++){
    Asteroid a = rocks[i];
    for(int j = 0; j < rocks.length; j++){
      Asteroid b = rocks[j];
      if(a != b && a.collidingWith(b) == true){
        a.setDirection(a.getDirection()+180);
      }
    }
  }
}
