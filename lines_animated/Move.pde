class Move {
  int x=50;
  int y=50;

  void display() {
    stroke(#E82513); // red horizontal
    line(x, 350, x, 450);
    x=x+2;
    if (x>640) {
      x=50;
    }
    stroke(#0D4DB9); // blue vertikal 
    line(350, y, 450, y);
    y=y+2;
    if (y>570) {
      y=50;
    }
  }
}
