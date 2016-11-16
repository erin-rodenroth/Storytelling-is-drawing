import controlP5.*;

char letter;
String tellStory = "Tell me a story: ";
String words = " aa";
char lastTyped;
char lastTyped2;
char lastTyped3;
char myKey;
int myX = 0;
int myY = 0;
int topY;
int botY;
int n;
int c1, c2;
color myColor = 255;
String mySubject = " ";
String myTitle = " ";
boolean myBool = false;
ControlP5 myButton;
ControlP5 myTextField;
ControlP5 theTitle;

void setup() {
  size(2000, 1000);
  textFont(createFont("Helvetica", 20));
  background(0);
  rect(0, 850, 2000, 1250);
  fill(0);
  textSize(20);
  text(tellStory, 15, 867, 1400, 890);
  
  //cp5 stuff
  myButton = new ControlP5(this);
  myTextField = new ControlP5(this);
  theTitle = new ControlP5(this);
  
  myButton.addButton("clear")
     .setValue(0)
     .setPosition(1750, 900)
     .setSize(200,40)
     .setColorBackground(color(0,140,255))
     .getCaptionLabel().setFont(createFont("Helvetica", 20))
     ;
  myTextField.addBang("submit")
     .setPosition(775, 550)
     .setSize(300, 60)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER).setFont(createFont("Helevetica", 20))
     ;
  fill(0);
  myTextField.addTextfield("your subject")
     .setPosition(775, 400)
     .setSize(300,80)
     .setFont(createFont("Helvetica", 30))
     .setFocus(true)
     .setColor(0)
     .setColorBackground(color(255,255,255))
     .setColorCursor(color(255))
     .getCaptionLabel().setFont(createFont("Helvetica", 20))
     ;
   theTitle.addTextfield("title of story")
     .setPosition(775, 250)
     .setSize(300, 80)
     .setFont(createFont("Helvetica", 30))
     .setFocus(true)
     .setColor(0)
     .setColorBackground(color(255,255,255))
     .setColorCursor(color(255))
     .getCaptionLabel().setFont(createFont("Helvetica", 20))
     ;
}

void draw() {
  textSize(20);
  rect(myX, myY, 3, 850);
  textAlign(LEFT);
  text(words, 160, 870, 1550, 920);
}
//button stuff
public void clear() {
  myX = 0;
  noStroke();
  words = "";
  fill(255);
  rect(160, 870, 2000, 950);
  fill(0);
  rect(myX, myY, 2000, 850);
  myTextField.get(Textfield.class,"your subject").clear();
  theTitle.get(Textfield.class, "title of story").clear();
  mySubject = " ";
  myTitle = " ";
  myTextField.show();
  theTitle.show();
  theTitle.setVisible(true);
  myTextField.setVisible(true);
}

public void submit() {
    mySubject = myTextField.get(Textfield.class,"your subject").getText();
    myTitle = theTitle.get(Textfield.class, "title of story").getText();
    myTextField.setVisible(false);
    myTextField.hide();
    theTitle.setVisible(false);
    theTitle.hide();
    fill(0);
    rect(myX, myY, 2000, 850);
    myBool = true;
}

public void findSubject() {
  for (int x = 0; x < words.length()-mySubject.length(); x++) {
    if (words.substring(x, x + mySubject.length()).equals(mySubject)) {
      fill(myColor);
      rect(myX, x*1.2, width-myX, 2);
      myColor = myColor - 10;
    }
  }
}
void keyTyped() {
  findSubject();
  textSize(150);
  fill(0);
  textAlign(CENTER, CENTER);
  text(myTitle, width/2, 800/2);
  if (myBool == true) {
  if ((key >= 'A' && key <= 'z') || key == ' ' || key == ',' || key == '.' || key == '!' || key == '?' || key == '\'') {
      words = words + key;
      myX = myX + 3;
      if (key == '.' || key == '?' || key == '!' || key == ',' || key == '\'') { //. or , or ! or ?
        fill(0);
        rect(myX-10, random(0,800), 20, 20);
      } else if ((key == '.' && lastTyped == '.') || (key == '!' && lastTyped == '!') || (key == '?' && lastTyped == '?')) {
          fill(0);
          rect(myX-10, random(0,800), 20, 20);
          myX = myX -3;
      }
        lastTyped3 = lastTyped2;
        lastTyped2 = lastTyped;
        lastTyped = key;         
    }
    if (words.length() == 0) {
      myX = 0;
    }
    if (key == 'a' || key == 'A') {
      fill(255, 0, 0);
    } else if (key == 'b' || key == 'B') {
      fill(50, 50, 255);     
    }  else if (key == 'c' || key == 'C') {
      fill(252, 242, 155);     
    } else if (key == 'd' || key == 'D') {
      fill(152, 152, 152);     
    } else if (key == 'e' || key == 'E') {
      fill(253, 249, 122);     
    } else if (key == 'f' || key == 'F') {
      fill(255, 186, 24);     
    } else if (key == 'g' || key == 'G') {
      fill(82, 138, 88);     
    } else if (key == 'h' || key == 'H') {
      fill(144, 144, 144);     
    } else if (key == 'i' || key == 'I') {
      fill(127, 127, 127);     
    } else if (key == 'j' || key == 'J') {
      fill(78, 46, 46);     
    } else if (key == 'k' || key == 'K') {
      fill(252, 130, 240);     
    } else if (key == 'l' || key == 'L') {
      fill(148, 149, 117);     
    } else if (key == 'm' || key == 'M') {
      fill(102, 102, 153);     
    } else if (key == 'n' || key == 'N') {
      fill(180, 212, 194);     
    } else if (key == 'o' || key == 'O') {
      fill(255, 255, 255);     
    } else if (key == 'p' || key == 'P') {
      fill(195, 89, 240);     
    } else if (key == 'q' || key == 'Q') {
      fill(255, 255, 51);     
    } else if (key == 'r' || key == 'R') {
      fill(215, 6, 6);     
    } else if (key == 's' || key == 'S') {
      fill(255, 255, 112);     
    } else if (key == 't' || key == 'T') {
      fill(80, 186, 83);     
    } else if (key == 'u' || key == 'U') {
      fill(142, 190, 253);     
    } else if (key == 'v' || key == 'V') {
      fill(149, 149, 149);     
    } else if (key == 'w' || key == 'W') {
      fill(132, 218, 135);     
    } else if (key == 'x' || key == 'X') {
      fill(192, 103, 103);     
    } else if (key == 'y' || key == 'Y') {
      fill(226, 222, 94);     
    } else if (key == 'z' || key == 'Z') {
      fill(132, 110, 141);     
    } else if (key == ' ') {
      fill(0);
    } else if (key == BACKSPACE) {
      if (words.length() > 0) {
        words = words.substring(0, words.length()-1);
        fill(0);
        rect(myX, myY, width-myX, 850);    
        fill(255);
        rect(160, 870, 2000, 950);
        fill(0);
        text(words, 160, 870, 1550, 920);
        myX = myX - 3;
      } else {
          words = "";
      }
    }
    
  }
}