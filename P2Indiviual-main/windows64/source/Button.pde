class Button {
  float x, y, w, h;
  color colr;

  Button(float x, float y, float w, float h) {
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
  boolean hover(float mx, float my){
      if (mx >= x-(w/2) && mx <= x + (w/2) && my >= y-(h/2) && my <= y + (h/2)) {
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
