void visual() {
  noLoop();
  background(0);
  String[] keys = concordance.keyArray(); 
  // function keyArray() nimmt alle wörter aus concordance und steckt sie in den string-array keys
  for (int i = 0; i < keys.length; i++) {  //alle keys (also die Wörter) werden durchgezählt im loop
    String k = keys[i]; // VEREINFACHUNG! statt keys[i] nur mehr k schreiben
    int count = concordance.get(k); //index zum Zählen ->  GET aus der concordance
    fill(random(100, 200));
    textSize(count);
    text(k, random(80, 850), random(80, 650));
    println( count);
  }
}
