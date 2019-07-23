Dot[] dottie = new Dot[300];   // dottie: neues Array der class Dot mit xxx elementen

void setup() {
  size(900, 700);
  smooth();
  noStroke();
  fill(255);

  //for loop für die xxx dotties  ALWAYS bei array
  for (int i = 0; i<dottie.length; i++) {
   float x = width/2 + cos(i) *i;  //size and speed of the spiral change with i
   float y = height/2 + sin(i) *i;
    // cos() + sin() bewegen die dotties
    // i wächst, also auch x u y 
    dottie[i] = new Dot(x, y, 0.01*(i/100)); // ->parameter tempx, tempy, tspeed
  }
}


void draw() {
  background(150, 0, 0);
  for (int i = 0; i<dottie.length; i++) { //dont forget the loop :)
    dottie[i].display();
  }
}
