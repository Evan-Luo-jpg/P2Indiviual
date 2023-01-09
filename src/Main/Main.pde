void setup(){
  fullScreen();
  textSize(50);
  text("Welcome to the intermolecular forces model", width/2-100, height/2);
  text("By Evan Luo", width/2-50, height/2+50);
}

void draw() {
  boolean play = false;
  if(mousePressed){
    play = true;
  }
  if(play){
    text("Play", 100,100);
  }else{
    text("Click to Start", width/2-50, height/2+100);
  }
  
}
