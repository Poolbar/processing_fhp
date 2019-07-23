class Grid {

  void display() {
    for (int i=50; i<640; i=i+10) {
      stroke(#E82513);  //red
      line(i, 50, i, 150);
      stroke(#0D4DB9);  //blue
      line(50, i, 150, i);
    }
  }
}
