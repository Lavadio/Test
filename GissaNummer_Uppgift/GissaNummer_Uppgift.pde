import uibooster.*;

UiBooster booster;
float NumInput1, NumInput2;

void setup() {
  size(600, 600);
  
  booster = new UiBooster();
  
  NumInput1 = float(booster.showTextInputDialog("Välj ett nummer"));
  
}

void draw() {
  background(10);
  
  textAlign(CENTER, CENTER);
  textSize(32);
  
  if (NumInput1 != NumInput2) {
    NumInput2 = float(booster.showTextInputDialog("Försök gissa nummret"));
  }
  
  if (NumInput1 == NumInput2) {
    background(0, 255, 0);
    text("Rätt svar!", width/2, height/2);
  }
  
    if (NumInput1 > NumInput2) {
    background(255, 0, 0);
    text("För lågt", width/2, height/2);
  }
  
    if (NumInput1 < NumInput2) {
    background(255, 0, 0);
    text("För högt", width/2, height/2);
  }
}
