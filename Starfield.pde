Particle[] stan = new Particle[500];
void setup()
{
  size(1000, 1000);
  noStroke();
  for (int i = 0; i < 10; i++)
  {
    stan[i] = new OddBall();
  }
  for(int i = 10; i < stan.length; i++)
  {
    stan[i] = new Particle();
  }
    frameRate(100);
}
void draw()
{
  background(0);
  for (int i = 0; i < stan.length; i++)
  {
    stan[i].show();
    stan[i].move();
  }
}
class Particle
{
  double myX, myY, myColor, myAngle, mySpeed, mySize;
  Particle()
  {
    myX = 500; //number given from initial launch
    myY = 500; //terminate point for firework flying up
    myColor = color((int)(Math.random()*255) + 100, 0, 0);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    mySize = 5;
  }
  void show() {
    fill((int)myColor);
    ellipse((float)myX, (float)myY, (float) mySize, (float) mySize);
  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}
  
  class OddBall extends Particle {
    OddBall() {
      myX = 500; //number given from initial launch
      myY = 500; //terminate point for firework flying up
      myColor = color((int)(Math.random()*255) + 100, (int)(Math.random()*255) + 100, 0);
      myAngle = Math.random()*2*Math.PI;
      mySpeed = Math.random()*10;
      mySize = 20;
    }
    void show() {
          fill((int)myColor);
    ellipse((float)myX, (float)myY, (float) mySize, (float) mySize);
    }

    void move() {
          myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    }
  }
