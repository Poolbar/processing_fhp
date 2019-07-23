//bunnygame_easter edition
//help the bunny catch the eggs
//fhp processing sose2019
//carina christler
//  HAVE FUN :)

Bunny b;
Egg[] e;
int counter;
int eggcount = 5;
float time = 20;
PImage bunnyback;
PImage sun;

void setup() {
  size(900, 700); 
 // noCursor();
  noStroke();
  imageMode(CENTER);
  ellipseMode(CENTER);
  textAlign(CENTER);
  bunnyback = loadImage("A1mdpi.png");
  b = new Bunny();  //neuer bunny wird instanziert, constructor aufrufen
  e = new Egg[eggcount];
  for (int i = 0; i < eggcount; i++) {
    e[i] = new Egg();
  }
  counter = 0;
}


void draw() {
  background(bunnyback);
  b.display();
  if (time > 0) {
    for (int i = 0; i < eggcount; i++) {
      e[i].display();
      e[i].move();
      if (b.isColl(e[i].gibX(), e[i].gibY())) {
        e[i].setEgg();
        counter++;
      }
    }
    fill(#084871);
    text("Eier: " + counter, 30, 30);
    //text("Zeit: " + time, 800, 30);
    neueZeit();
  } else {
    text("Zeit abgelaufen", width/2, height/2);
    text(counter + " Eier", width/2, height/2+30);
    text("Zum Neustart drücke eine beliebige Taste", width/2, height/2+60);
    if (keyPressed || mousePressed) {
      b.display();
      time = 20;
      neueZeit();
      counter = 0;
    }
  }
}

void neueZeit() {
  time = time - (1/frameRate);
}
