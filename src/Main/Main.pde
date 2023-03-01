Button startButton;
Button CH4;
Button H2O;
Button NH3;
Button C3H6O;
Button clear;

ArrayList<H2O> water = new ArrayList<H2O>();
ArrayList<CH4> methane = new ArrayList<CH4>();
ArrayList<NH3> ammonia = new ArrayList<NH3>();
ArrayList<C3H6O> acetone = new ArrayList<C3H6O>();



boolean play = false;
int i = 0;
int draggingIndex;
boolean draggingH2O, draggingCH4, draggingNH3, draggingC3H6O;
boolean clickingH2O, clickingCH4, clickingNH3, clickingC3H6O, clickingReset;

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
  clear = new Button(100, height-150, 200, 300);
  cam = new PeasyCam(this, width/2, height/2, 0, 1000);
}

void draw() {
  noStroke();
  boolean start = startButton.mouseClicked();
  boolean hoverH2O = H2O.hover(mouseX, mouseY);
  boolean hoverCH4 = CH4.hover(mouseX, mouseY);
  boolean hoverNH3 = NH3.hover(mouseX, mouseY);
  boolean hoverC3H6O = C3H6O.hover(mouseX, mouseY);
  boolean hoverReset = clear.hover(mouseX, mouseY);
  boolean clickedH2O = H2O.mouseClicked();
  boolean clickedCH4 = CH4.mouseClicked();
  boolean clickedNH3 = NH3.mouseClicked();
  boolean clickedC3H6O = C3H6O.mouseClicked();
  boolean reset = clear.mouseClicked();

  //Making all them true
  if(reset){
    clickingReset = true;
  }
  if (clickedH2O) {
    clickingH2O = true;
  }
  if (clickedCH4) {
    clickingCH4 = true;
  }
  if (clickedNH3) {
    clickingNH3 = true;
  }
  if (clickedC3H6O) {
    clickingC3H6O = true;
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
    clear.display();

    cam.endHUD();

    if (!mousePressed) {
      draggingH2O = false;
      clickingH2O = false;
      draggingCH4 = false;
      clickingCH4 = false;
      draggingNH3 = false;
      clickingNH3 = false;
      draggingC3H6O = false;
      clickingC3H6O = false;
      clickingReset = false;
    }

    //Display Molecules
    if (clickingH2O || clickingCH4 || clickingNH3 || clickingC3H6O) {
      cam.setActive(false);
    } else {
      cam.setActive(true);
    }
    println("MouseX: "+ mouseX);

    if (water.size() == 2) {
      H2O w1 = water.get(0);
      H2O w2 = water.get(1);
      w1.moveCenter(w2.x, w2.y, w1.x+125, w1.y+300);
      w2.x = w1.xl;
      w2.y = w1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("There is hydrogen bond between the Oxygen and the Hydrogen. This is due to the fact that Oxygen is extremely electronegative, making the molecule very polar", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (methane.size() == 2) {
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("These are 2 non-polar molecules", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (ammonia.size() == 2) {
      NH3 a1 = ammonia.get(0);
      NH3 a2 = ammonia.get(1);
      a1.moveCenter(a2.x, a2.y, a1.x-150, a1.y+200);
      a2.x = a1.xl;
      a2.y = a1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("There is hydrogen bond between the Nitrogen and the Hydrogen. This is due to the fact that Nitrogen is extremely electronegative, making the molecule very polar", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (acetone.size() == 2) {
      C3H6O c1 = acetone.get(0);
      C3H6O c2 = acetone.get(1);
      c1.moveCenter(c2.x, c2.y, c1.x-380, c1.y+380);
      c2.x = c1.xl;
      c2.y = c1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("There is dipole dipole bond between the Oxygen and the Hydrogen. This is due to the fact that Oxygen is extremely electronegative, making the molecule very polar, but there is not hydrogen attatched to the Oxygen so it is not a hydrogen bond", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (water.size() == 1 && methane.size() == 1) {
      H2O w1 = water.get(0);
      CH4 m1 = methane.get(0);
      w1.moveCenter(m1.x, m1.y, w1.x, w1.y-300);
      m1.x = w1.xl;
      m1.y = w1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (water.size() == 1 && ammonia.size() == 1) {
      H2O w1 = water.get(0);
      NH3 a1 = ammonia.get(0);
      w1.moveCenter(a1.x, a1.y, w1.x+150, w1.y-200);
      a1.x = w1.xl;
      a1.y = w1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }

    if (water.size() == 1 && acetone.size() == 1) {
      H2O w1 = water.get(0);
      C3H6O c1 = acetone.get(0);
      w1.moveCenter(c1.x, c1.y, w1.x+125, w1.y+500);
      c1.x = w1.xl;
      c1.y = w1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }
    
    if (ammonia.size() == 1 && methane.size() == 1) {
      NH3 a1 = ammonia.get(0);
      CH4 m1 = methane.get(0);
      a1.moveCenter(m1.x, m1.y, a1.x, a1.y-300);
      m1.x = a1.xl;
      m1.y = a1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }
    
    if (ammonia.size() == 1 && acetone.size() == 1) {
      NH3 a1 = ammonia.get(0);
      C3H6O c1 = acetone.get(0);
      a1.moveCenter(c1.x, c1.y, a1.x-150, a1.y+400);
      c1.x = a1.xl;
      c1.y = a1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }
    
    if (methane.size() == 1 && acetone.size() == 1) {
      CH4 m1 = methane.get(0);
      C3H6O c1 = acetone.get(0);
      m1.moveCenter(c1.x, c1.y, m1.x, m1.y+500);
      c1.x = m1.xl;
      c1.y = m1.yl;
      cam.beginHUD();
      fill(255);
      textSize(20);
      text("", width-150, 0+150, 300, 300);
      cam.endHUD();
    }
    
    for (H2O waterpart : water) {
      waterpart.display();
    }

    for (CH4 methanepart : methane) {
      methanepart.display();
    }

    for (NH3 ammoniapart : ammonia) {
      ammoniapart.display();
    }

    for (C3H6O acetonepart : acetone) {
      acetonepart.display();
    }

    //Info for all of the buttons
    cam.beginHUD();
    textAlign(CENTER);
    fill(0);
    if(hoverReset){
      textSize(30);
      String clean = "Clicking this will clear everything off the screen";
      text(clean, 100, height-150, 200, 300);
    }else{
      textSize(60);
      text("Reset", 100, height-150);
    }
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
    cam.endHUD();

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

  for (int i = ammonia.size() - 1; i >= 0; i--) {
    if (NH3.hover(mouseX, mouseY)) {
      draggingNH3 = true;
      draggingIndex = i;
      break;
    }
  }
  for (int i = acetone.size() - 1; i >= 0; i--) {
    if (C3H6O.hover(mouseX, mouseY)) {
      draggingC3H6O = true;
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
  if (draggingNH3 && ammonia.size() == 0) {
    NH3 m = ammonia.get(draggingIndex);
    m.x = mouseX;
    m.y = mouseY;
  }
  if (draggingC3H6O && acetone.size() == 0) {
    C3H6O m = acetone.get(draggingIndex);
    m.x = mouseX;
    m.y = mouseY;
  }
}

void mouseReleased() {
  if (water.size() + methane.size() + ammonia.size() + acetone.size() < 2) {
    if (clickingH2O) {
      water.add(new H2O(mouseX, mouseY));
    }
    if (clickingCH4) {
      methane.add(new CH4(mouseX, mouseY, 0));
    }
    if (clickingNH3) {
      ammonia.add(new NH3(mouseX, mouseY, 0));
    }

    if (clickingC3H6O) {
      acetone.add(new C3H6O(mouseX, mouseY, 0));
    }
  }
  if(clickingReset){
    water.clear();
    methane.clear();
    ammonia.clear();
    acetone.clear();
  }
}
