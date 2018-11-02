Spaceship bobbu = new Spaceship();
Star[] kirby = new Star[100];

public void setup() {
  size(700, 700);
  for (int i=0; i<kirby.length; i++) {
    kirby[i] = new Star();
  }
}

public void draw() {
  background(0);
  bobbu.show();
  bobbu.move();
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
      bobbu.accelerate(0.5);
    }
  }

  if (key == CODED) {
    if (keyCode == DOWN) {

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