class Egg {


  float x;
  float y;
  float starty = -30; //damit die eier unterschiedlich fallen
  float r = 20;
  color c;
  float yspeed = 3;

  Egg() {
    setEgg();
  }

  void setEgg() {
    x = random(150, 750);
    y = random(starty); //startposition egg
    c = color(random(255), random(255), random(255));
  }

  void display() {
    fill(c);
    ellipse(x, y, r, r);
  }  
  void move() {
    y = y + yspeed;
    if (y > 600) {
      setEgg();
    }
  }

  float gibX() {
    return x;
  }

  float gibY() {
    return y;
  }
}
