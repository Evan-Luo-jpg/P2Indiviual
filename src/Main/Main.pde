Button startButton;
Button CH4;
Button H2O;
Button NH3;
Button C3H6O;
Button C2H6O;

ArrayList<H2O> water = new ArrayList<H2O>();
ArrayList<CH4> methane = new ArrayList<CH4>();

boolean play = false;
    int i = 0;
int draggingIndex;
boolean draggingH2O, draggingCH4;
boolean clickingH2O, clickingCH4;

import peasy.*;
PeasyCam cam;

void setup() {
  fullScreen(P3D);
  textSize(50);
  textAlign(CENTER);
  rectMode(CENTER);
  startButton = new Button(width/2, height/2+200, 400, 200);
  CH4 = new Button(width-100, height-150, 200, 300);
  H2O = new Button(width-300, height-150, 200, 300);
  NH3 = new Button(width-500, height-150, 200, 300);
  C3H6O = new Button(width-700, height-150, 200, 300);
  C2H6O = new Button(width-900, height-150, 200, 300);
  cam = new PeasyCam(this, width/2, height/2, 0, 1000);
}

void draw() {
  
  boolean start = startButton.mouseClicked();
  boolean hoverH2O = H2O.hover(mouseX, mouseY);
  boolean hoverCH4 = CH4.hover(mouseX, mouseY);
  boolean hoverNH3 = NH3.hover(mouseX, mouseY);
  boolean hoverC3H6O = C3H6O.hover(mouseX, mouseY);
  boolean hoverC2H6O = C2H6O.hover(mouseX, mouseY);
  boolean clickedH2O = H2O.mouseClicked();
  boolean clickedCH4 = CH4.mouseClicked();

  //Making all them true
  if(clickedH2O){
      clickingH2O = true;
    }
    if(clickedCH4){
      clickingCH4 = true;
    }
    
  if (start) {
    play = true;
  }
  if (play) {
    background(0);
    fill(255); 
    cam.beginHUD();
    CH4.display();
    H2O.display();
    NH3.display();
    C3H6O.display();
    C2H6O.display();

    cam.endHUD();

    if (!mousePressed) {
      draggingH2O = false;
      clickingH2O = false;
      draggingCH4 = false;
      clickingCH4 = false;
    }

    //Display Molecules
    if (clickingH2O || clickingCH4) {
      cam.setActive(false);
    } else {
      cam.setActive(true);
    }

    for (H2O waterpart : water) {
        waterpart.display();
    }
    
    for (CH4 methanepart : methane) {
        methanepart.display();
    }

    //Info for all of the buttons
    cam.beginHUD();
    textAlign(CENTER);
    fill(0);
    if (hoverCH4) {
      textSize(30);
      String CH4 = "This is a chemical that is most commonly known as methane.";
      text(CH4, width-100, height-150, 200, 300);
    } else {
      textSize(60);
      text("CH4", width-100, height-150);
    }
    if (hoverH2O) {
      textSize(30);
      String H2O = "This is a chemical that is most commonly known as water.";
      text(H2O, width-300, height-150, 200, 300);
    } else {
      textSize(60);
      text("H2O", width-300, height-150);
    }
    if (hoverNH3) {
      textSize(30);
      String NH3 = "This is a chemical that is most commonly known as ammonia.";
      text(NH3, width-500, height-150, 200, 300);
    } else {
      textSize(60);
      text("NH3", width-500, height-150);
    }
    if (hoverC3H6O) {
      textSize(30);
      String C3H6O = "This is a chemical that is most commonly known as acetone.";
      text(C3H6O, width-700, height-150, 200, 300);
    } else {
      textSize(60);
      text("C3H6O", width-700, height-150);
    }
    if (hoverC2H6O) {
      textSize(30);
      String C2H6O = "This is a chemical that is most commonly known as ethanol.";
      text(C2H6O, width-900, height-150, 200, 300);
    } else {
      textSize(60);
      text("C2H6O", width-900, height-150);
    }
    cam.endHUD();
  print(methane.size());

  } else {
    cam.beginHUD();
    background(0);
    fill(255);
    boolean hover = startButton.hover(mouseX, mouseY);
    if (hover) {
      fill(100);
    } else {
      fill(255);
    }
    startButton.display();
    fill(255);
    text("Welcome to the intermolecular forces model", width/2, height/2);
    text("By Evan Luo", width/2, height/2+50);
    fill(0);
    text("Click to Start", width/2, height/2+200);
    cam.endHUD();
  }
}


void mousePressed() {
  for (int i = water.size() - 1; i >= 0; i--) {
    if (H2O.hover(mouseX, mouseY)) {
      draggingH2O = true;
      draggingIndex = i;
      break;
    }
  }
  for (int i = methane.size() - 1; i >= 0; i--) {
    if (CH4.hover(mouseX, mouseY)) {
      draggingCH4 = true;
      draggingIndex = i;
      break;
    }
  }
}

void mouseDragged() {
  if (draggingH2O && water.size() == 0) {
    H2O w = water.get(draggingIndex);
    w.x = mouseX;
    w.y = mouseY;
  }
  
  if (draggingCH4 && methane.size() == 0) {
    CH4 m = methane.get(draggingIndex);
    m.x = mouseX;
    m.y = mouseY;
  }
}

void mouseReleased() {
  if (clickingH2O) {
      water.add(new H2O(mouseX, mouseY));
    }
  if(clickingCH4){
      methane.add(new CH4(mouseX, mouseY, 0));
    }
  
}
