Spaceship bobbu = new Spaceship();
Star[] kirby = new Star[150];
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
boolean keyA = false;
boolean keyS = false;
boolean keyD = false;
boolean keyW = false; 
Bullet gn = new Bullet(bobbu);
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
  gn.show();
  gn.move();
  for (int i=0; i<rock.size(); i++) {
    rock.get(i).show();
    rock.get(i).move();
    float d = dist(bobbu.getX(), bobbu.getY(), rock.get(i).getX(), rock.get(i).getY());
    if (d<15) {
      rock.remove(i);
    }
    }
    for (int i = 0; i <kirby.length; i++) {
      kirby[i].show();
  }

    if(keyW == true){
   	bobbu.accelerate(.2);
    }
    if(keyS == true){
    bobbu.accelerate(-.3);
	}
	if(keyA == true){
     bobbu.turn(-6);
	}
	if(keyD == true){
    bobbu.turn(6);
	}  
} 

public void keyPressed() {
  if (key == ' ') {
      bobbu.hyperspace();
  }
  if (key == 'w') {
        keyW = true;
  }
    if (key == 's') {
        keyS = true;
  }
    if (key == 'a') {
      	keyA = true;
  }
    if (key == 'd') {
        keyD = true;
  }
}
 public void keyReleased(){
    if (key == ' ') {
      bobbu.hyperspace();
    }
    if (key == 'w') {
        keyW = false;
    }
    if (key == 's') {
        keyS = false;
    }
    if (key == 'a') {
      	keyA = false;
    }
    if (key == 'd') {
        keyD = false;
    }
  }