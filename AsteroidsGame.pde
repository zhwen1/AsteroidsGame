Spaceship bobbu = new Spaceship();
Star[] kirby = new Star[150];
Asteroid[] rock = new Asteroid[50];

public void setup() {
  size(700, 700);
  for (int i=0; i<kirby.length; i++) {
    kirby[i] = new Star();}
  for(int i=0; i<rock.length; i++){
  	rock[i] = new Asteroid();}
}

public void draw() {
  background(0);
  bobbu.show();
  bobbu.move();
  for(int i=0; i<rock.length; i++){
  	rock[i].show();
  	rock[i].move();
  }
  for (int i = 0; i <kirby.length; i++){
    kirby[i].show();
  }

}

public  void keyPressed() {
  if (key == ' ') {
      bobbu.hyperspace();
    }
  if (key == CODED) {
    if (keyCode == UP) {
      bobbu.accelerate(.3);
    }
  }

  if (key == CODED) {
    if (keyCode == DOWN) {
    	bobbu.accelerate(-.5); 
    }
  }
  if (key == CODED) {
    if (keyCode == LEFT) {
      bobbu.turn(-6);
    }
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      bobbu.turn(6);
    }
  }
}