Atom hydrogen1;
Atom hydrogen2;
Atom oxygen;
Button waterButton;

int x, y;
boolean dragging = false;

class H2O extends Molecule {
  H2O() {
    hydrogen1 = new Atom(120, 2.20);
    hydrogen2 = new Atom(120, 2.20);
    oxygen = new Atom(152, 3.44);
  }


  void display() {
    hydrogen1.display(x-250, y+250);
    hydrogen2.display(x+250, y+250);
    oxygen.display(x, y);
  }
  void mousePressed() {
    if(mousePressed && ){
      dragging = true;
    }
  }

  void mouseReleased() {
    dragging = false;
  }

  void mouseDragged() {
    if (dragging) {
      x = mouseX;
      y = mouseY;
    }
  }
}
