//your variable declarations here
Spaceship mySpaceship = new Spaceship ();
int asteroidNum = 5;
Star[] nightSky = new Star[200];
ArrayList <Asteroid> asteroidArray = new ArrayList <Asteroid> ();

public void setup()
{
  size (500, 500);
  for (int i = 0; i <200; i++) {
    nightSky[i] = new Star();
  }
  for (int i = 0; i <asteroidNum; i++) {
    asteroidArray.add (new Asteroid());
  }
}

public void draw() {
  background(0);
  mySpaceship.show();
  for (int i = 0; i <200; i++) {
    nightSky[i].show();
  }
  for (int i = 0; i <asteroidArray.size(); i++) {
    asteroidArray.get(i).show();
    asteroidArray.get(i).move();
  }
}

public void keyPressed()
{
  if (key == 'a') {
    mySpaceship.turn(-5);
  }
  if (key == 'd') {
    mySpaceship.turn(5);
  }
  if (key == 'w') {
    mySpaceship.move();
  }
  if (key == 'h') {
    mySpaceship.setXspeed(0);
    mySpaceship.setYspeed(0);
    mySpaceship.myCenterX= Math.random()*width;
    mySpaceship.myCenterY= Math.random()*height;
  }
  if (key == 'z') {
    mySpaceship.accelerate(5);
  }
}
