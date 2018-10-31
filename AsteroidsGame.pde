Spaceship bobbu = new Spaceship();
public void setup(){
	size(700,700);
}

public void draw(){
  bobbu.show();
}

public  void keyPressed(){
if(key == CODED){
	if (keyCode == UP){
		bobbu.setDirectionX(0);

	}
}
}

