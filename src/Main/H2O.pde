Atom hydrogen1;
Atom hydrogen2;
Atom oxygen;
int x1,y1, x2, y2, xo, yo;
boolean dragging = false;

class H2O extends Molecule{
  H2O(){
    x1 = mouseX-250;
    x2 = mouseX+250;
    y1 = mouseY+250;
    y2 = mouseY+250;
    xo = mouseX;
    yo = mouseY;
    hydrogen1 = new Atom(120, 2.20);
    hydrogen2 = new Atom(120, 2.20);
    oxygen = new Atom(152, 3.44);
  }
  
  
  void draw(){
      hydrogen1.draw(x1,y1);
      hydrogen2.draw(x2,y2);
      oxygen.draw(xo,yo);
  }
void mousePressed() {
    dragging = true;
}

void mouseReleased() {
  dragging = false;
}

void mouseDragged() {
  if (dragging) {
    x1 = mouseX-250;
    x2 = mouseX+250;
    y1 = mouseY+250;
    y2 = mouseY+250;
    xo = mouseX;
    yo = mouseY;
  }
}
  
  
  
}
