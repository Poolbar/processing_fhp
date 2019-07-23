//how to animate lines
//and a very first attempt to recreate a visual effect i saw on a website
//  >> http://informationplusconference.com <<
//carina christler
//update: use of classes

Grid g = new Grid ();
Move m = new Move();
MouseMove mm = new MouseMove();

void setup() {
  size (700, 650);
  //interessante effekte :)
  //background(#D5DDEA);
  //frameRate(5);
}

void draw() { 
  background(#FFFFFF);
  g.display();
  m.display();
  mm.display();
}
