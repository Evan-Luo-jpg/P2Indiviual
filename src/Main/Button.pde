class Button {
  int x, y, w, h;
  color colr;

  Button(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;

  }

  void display() {
    shapeMode(CENTER);
    rect(x, y, w, h);
  }

  //Determine if mouse is being pressed
  boolean hover(){
      if (mouseX >= x-(w/2) && mouseX <= x + (w/2) && mouseY >= y-(h/2) && mouseY <= y + (h/2)) {
        return true;
      } else {
        return false;
      }
  }
   
  
  boolean mouseClicked() {
    if (mousePressed) {
      if (mouseX >= x-(w/2) && mouseX <= x + (w/2) && mouseY >= y-(h/2) && mouseY <= y + (h/2)) {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }
}
