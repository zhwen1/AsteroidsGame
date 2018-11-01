Spaceship bobbu = new Spaceship();
public void setup(){
	size(700,700);
}

public void draw(){
	background(0);
  	bobbu.show();
}

public  void keyPressed(){
if(key == CODED){
	if (keyCode == 49){
		bobbu.setDirectionX(0);
		bobbu.setX((int)(Math.random()*700));
		bobbu.setY((int)(Math.random()*700));	
		bobbu.setPointDirection((int)(Math.random()*360));
	}
}
if(key == CODED){
	if (keyCode == UP){
		bobbu.setDirectionX(0);
	}
}

if(key == CODED){
	if (keyCode == DOWN){
		bobbu.setDirectionX(0);
	}
}
if(key == CODED){
	if (keyCode == LEFT){
		bobbu.setPointDirection(0);
	}
}
if(key == CODED){
	if (keyCode == RIGHT){
		bobbu.setPointDirection(0);
	}
}
if(key == CODED){
	if (keyCode == DOWN){
		bobbu.setDirectionX(0);
	}
}
}


