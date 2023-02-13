Atom hydrogen1;
Atom hydrogen2;
Atom oxygen;

boolean dragging = false;


class H2O extends Molecule {
  
  int x, y;
  
  H2O(int x_, int y_) {
    x = x_;
    y = y_;
    hydrogen1 = new Atom(120, 2.20);
    hydrogen2 = new Atom(120, 2.20);
    oxygen = new Atom(152, 3.44);
  }


  void display() {
    hydrogen1.display(x-250, y+250);
    hydrogen2.display(x+250, y+250);
    oxygen.display(x, y);
  }

  }
