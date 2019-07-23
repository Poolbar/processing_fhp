//carina christler
//this program draws a grid by using a nested_for_loop 
//change the color of the grid by moving the mouse
//change the size of the grid -> line 11 

void setup() {
  size(500, 500);
}

void draw() {
  grid(20);
}

void grid(int spacing) {
  for (int gridX = 0; gridX < width; gridX = gridX + spacing) {
    for (int gridY = 0; gridY < height; gridY = gridY + spacing) {
      float colour = map(mouseX, 0, width, 0, 255);
      strokeWeight(1);
      stroke(colour);
      fill(50,150,250);
      rect(gridX, gridY, spacing, spacing);
    }
  }
  //println(mouseX);
}
