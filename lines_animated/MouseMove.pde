class MouseMove {

  void display() {
    for (int i=50; i<650; i=i+10) {
      stroke(#0BD843); //green
      line(mouseX, 200, pmouseX, 300);
      line(200, mouseY, 300, pmouseY);
    }
  }
}
