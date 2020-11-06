int clicks = 0;
Particle [] alex = new Particle[20];
void setup()
{
  background(255);
  size(400, 400);
  for(int i = 0; i < alex.length; i++)
  {
    alex[i] = new Particle();
    alex[0] = new OddBallParticle();
    alex[1] = new OddBallParticle();
  }

}
void draw()
{
  background(255);
  fill(50, 205, 50);
  ellipse(170, 75, 20, 100);
  ellipse(230, 75, 20, 110);
  ellipse(225, 225, 300, 20);
  ellipse(125, 135, 300, 20);
  ellipse(225, 325, 20, 100);
  fill(255, 69, 0);
  ellipse(200, 200, 250, 250);
  ellipse(200, 200, 200, 200);
  line(200, 300, 200, 325);
  line(200, 100, 200, 75);
  line(100, 200, 75, 200);
  line(300, 200, 325, 200);
  if(mousePressed) 
    clicks++;
  if(clicks > 0) {
    fill(160, 82, 45);
    quad(183, 170, 181, 226, 223, 222, 216, 190);
  }

  if(clicks > 0) {
    for(int i = 0; i < alex.length; i++) 
    {
      alex[i].show();
      alex[i].move();
    }
  }
}


class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor, mySize;
  Particle() 
  {
    myX = 200;
    myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*70 + 140), (int)(Math.random()*60 + 70), (int)(Math.random()*40 + 20));
    mySize = (int)(Math.random()*10 + 5);
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
  void move()
  {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}

class OddBallParticle extends Particle
{
  OddBallParticle()
  {
    myX = 200;
    myY = 200;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color(225, 69, 0);
    mySize = (int)(Math.random()* 20 + 15);
  }
  void show()
  {
    fill(myColor);
    rect((float)myX, (float)myY, mySize, mySize);
  }
  void move()
  {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}


