class Asteroid extends Floater{
	Asteroid(){}
	public void setX(int x){myCenterX = x;}  
 	public int getX(){return (int)myCenterX;}   
 	public void setY(int y){myCenterY = y;}   
 	public int getY(){return (int)myCenterY;}     
  	public void setDirectionX(double x){myDirectionX = x;}   
  	public double getDirectionX(){return myDirectionX;}   
  	public void setDirectionY(double y){myDirectionY = y;}   
  	public double getDirectionY(){return myDirectionY;}   
  	public void setPointDirection(int degrees){myPointDirection = degrees;}   
 	public double getPointDirection(){return myPointDirection;}
 	public void hyperspace(){
    myCenterX = (Math.random()*600);
    myCenterY = (Math.random()*600);
    myPointDirection = Math.random()*180;
    myDirectionY = 0;
    myDirectionX = 0;
  }
}