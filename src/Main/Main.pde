Button startButton;
Button CH4;
Button H2O;
Button NH3;
Button C3H6O;
Button C2H6O;
H2O H2Omole;

boolean play = false;
boolean stopCamera = false;
boolean dragging1 = false;

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
  H2Omole = new H2O();
}

void draw() {
  boolean start = startButton.mouseClicked();
  boolean hoverH2O = H2O.hover();
    boolean hoverCH4 = CH4.hover();
    boolean hoverNH3 = NH3.hover();
    boolean hoverC3H6O = C3H6O.hover();
    boolean hoverC2H6O = C2H6O.hover();
    boolean stopCameraH = H2O.mouseClicked();
    
    
  if (start) {
    play = true;
  }
  if (stopCameraH){
    stopCamera = true;
  }
  if (play) {
    background(0);
    fill(255);
    cam.beginHUD();
    CH4.draw();
    H2O.draw();
    NH3.draw();
    C3H6O.draw();
    C2H6O.draw();
    textSize(20);
    text("Play", width/2, height/2);
    
    //Info for all of the buttons
    textAlign(CENTER);
    fill(0);
    if(hoverCH4){
      textSize(30);
      String CH4 = "This is a chemical that is most commonly known as methane.";
      text(CH4, width-100,height-150, 200, 300);
    }else{
      textSize(60);
      text("CH4", width-100,height-150);
    }
    if(hoverH2O){
      textSize(30);
      String H2O = "This is a chemical that is most commonly known as water.";
      text(H2O, width-300,height-150, 200, 300);
      if(stopCamera){
        cam.setActive(false);
        dragging1 = true;
      }
    }else{
      cam.setActive(true);
      textSize(60);
      text("H2O", width-300,height-150);
    }
    if(hoverNH3){
      textSize(30);
      String NH3 = "This is a chemical that is most commonly known as ammonia.";
      text(NH3, width-500,height-150, 200, 300);
    }else{
      textSize(60);
      text("NH3", width-500,height-150);
    }
    if(hoverC3H6O){
      textSize(30);
      String C3H6O = "This is a chemical that is most commonly known as acetone.";
      text(C3H6O, width-700,height-150, 200, 300);
    }else{
      textSize(60);
      text("C3H6O", width-700,height-150);
    }
    if(hoverC2H6O){
      textSize(30);
      String C2H6O = "This is a chemical that is most commonly known as ethanol.";
      text(C2H6O, width-900,height-150, 200, 300);
    }else{
      textSize(60);
      text("C2H6O", width-900,height-150);
    }
    cam.endHUD();
    
    if(dragging1){
      H2Omole.draw();
    }
    
    fill(255);
    lights();
    translate(232, 192, 0);
    sphereDetail(10);
    sphere(112);
  } else {
    cam.beginHUD();
    background(0);
    fill(255);
    boolean hover = startButton.hover();
    if (hover) {
      fill(100);
    } else {
      fill(255);
    }
    startButton.draw();
    fill(255);
    text("Welcome to the intermolecular forces model", width/2, height/2);
    text("By Evan Luo", width/2, height/2+50);
    fill(0);
    text("Click to Start", width/2, height/2+200);
    cam.endHUD();
    //fill(255);
    //noStroke();
    //lights();
    //translate(232, 400, 0);
    //sphere(112);
  }
}
