//homework_06
//carina christler
//wordanalysis of the presidential announcement speech from donald trump

boolean button = true;
PImage trump;
PFont myFont;
String[] words;
IntDict concordance;  
//store every word and how often it appears

void setup() {
  size(900, 700);
  imageMode(CENTER);
  textAlign(CENTER);
  myFont = createFont("FHPSun-Regular.otf", 40);
  trump = loadImage("trump.png");

  String[] speech = loadStrings("Trump_Speech.txt"); 
  //lädt .txt-file in ein großes array von Strings
  String entireSpeech = join(speech, " "); 
  //verbinde speech array und mache einen String daraus
  words = splitTokens(entireSpeech, " :,;.?“”");
  // split den String entireSpeech, damit die Wörter seperat in array sind

  concordance = new IntDict(); 
  for (int i = 0; i < words.length; i++) {
    String s = words[i];
    concordance.increment(s.toLowerCase());  //lower the string to all lower case characters
    //alle wörter in concordance werden im for_loop durchgelaufen und um 1 erhöht, gezählt
    concordance.sortValuesReverse();
    //Sortierung nach Häufigkeit
  }
}

void draw() {
  if (button) {
    front();
  } else {
    visual();
  }
}
void mousePressed() {
  if (mouseX > 350 && mouseX < 550 && mouseY > 300 && mouseY < 630) {
    button = !button;
  }
}
