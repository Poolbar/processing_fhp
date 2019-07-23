//bunny_sleep
//carina christler
//when the sun sets, bunny goes home to sleep
//press KEY DOWN

int d = 50;
int sunX = 200;
int sunY = 50;
float h = 55;  //color sun
float s = 90;
float b = 95;
float h1 = 190;  //color background sky
float s1 = 30;
float b1 = 90;

int bunnyX = 400;
int bunnyY = 600;
PImage bunny;  

void setup() {
  size(900, 700);
  imageMode(CENTER);
  ellipseMode(CENTER);
  colorMode(HSB, 360, 100, 100);
  bunny = loadImage("bunny.png");
}

void draw() {
  //background  change color
  noStroke();
  fill(h1, s1, b1);
  rect(0, 0, 900, 580);

  //sun
  noStroke();
  fill(h, s, b);
  ellipse(sunX, sunY, d+5, d);

  if (keyCode == DOWN) {  // Sonne geht unter und bunny ins haus
    sunY = sunY + 12;
    bunnyX = bunnyX + 8;

    fill(#F2F56F);
    textAlign(CENTER);
    textSize(30);
    text("GOOD NIGHT BUNNY", width/2, height/2);
  }
  
  if (bunnyX > 870) { // damit bunny nicht vom spielfeld hüpft
    bunnyX = 870;
  }

  if (sunY > 580) {   //himmmel ändert die farbe
    h1 = 210;
    s1 = 85;
    b1 = 40;
  }
  
  //wiese
  noStroke();
  fill(105, 70, 65);
  rect(0, 580, 900, 700);
  
  //bunny
  image(bunny, bunnyX, bunnyY);

  //bunny house sollte ganz unten stehen damit der hase im hause verschwindet
  noStroke();
  fill(0);                          
  rect(800, 550, 100, 140);
  noStroke();
  fill(#D30F0F);
  triangle(800, 550, 900, 550, 850, 500);
}
