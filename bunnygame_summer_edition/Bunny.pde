class Bunny {      //objekt bunny erzeugen -> fängt die eier
  PImage bunnypic;    // initialisiere variablen  
  float x;
  float y;

  Bunny () {  // ohne void -> kein rückgabewert, weil constructor
    bunnypic = loadImage("bunny_ice.png");
  }

  void display() {  //funktion darstellen, s.o.
    x = mouseX;
    y = 510;
    image(bunnypic, x, y);
  }

  boolean isColl(float collx, float colly) {
    float randx = x - (bunnypic.width/2);
    float randy = y - (bunnypic.height/2);

    if (collx > randx && collx < randx + bunnypic.width && colly > randy && colly < randy + bunnypic.height) {
      return true;
    } else {
      return false;
    }
  }
  
}
