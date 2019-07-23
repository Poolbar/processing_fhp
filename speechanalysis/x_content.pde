void content() {   //DAS IST NUR EIN BEISPIEL, ausserdem noch fehlerhaft
  
  String[] keys = concordance.keyArray(); 
  // function keyArray() nimmt alle wörter aus concordance und steckt sie in den string-array keys
  for (int i = 0; i < keys.length; i++) { //alle keys (also die Wörter) werden durchgezählt im loop
    int count = concordance.get(keys[i]);//index zum Zählen ->  GET aus der concordance
    fill(0);
    text(keys[i], random(count), random(count));

    println(keys[i], count);
  }
}
