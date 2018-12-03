Spaceship bobbu = new Spaceship();
Star[] kirby = new Star[150];
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();

public void setup() {
  size(700, 700);
  for (int i=0; i<kirby.length; i++) {
    kirby[i] = new Star();
  }
  for (int i=0; i<40; i++) {
    rock.add(i, new Asteroid());
  }
}

public void draw() {
  background(0);
  bobbu.show();
  bobbu.move();
  for (int i=0; i<rock.size(); i++) {
    rock.get(i).show();
    rock.get(i).move();
    float d = dist(bobbu.getX(), bobbu.getY(), rock.get(i).getX(), rock.get(i).getY());
    if (d<10) {
      rock.remove(i);
    }
    }
    for (int i = 0; i <kirby.length; i++) {
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