class Dot {
  float x;      //declare properties for the object
  float y;      //welche Eigenschaften hat mein Objekt?
  
  float time = 0; //time - increase
  float speed; 

  Dot (float tempx, float tempy, float tspeed) {   //constructor
    x = tempx;   //x wird zu temporären x
    y = tempy;
    speed = tspeed;
  }

  void display() {
    float rad = map(sin(time), -1, 1, 5, 10); //sin() -> Values are returned in the range -1 to 1
    // map - convert - sin(t) von -1 und 1 zu "meinen" variablen
    ellipse(x, y, rad*5, rad*0.4);
    time = time + speed;
    
    if (x > 870){
      x=50;
    }
  }
}
