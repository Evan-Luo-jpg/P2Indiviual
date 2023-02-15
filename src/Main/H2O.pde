Atom hydrogen1;
Atom oxygen;



class H2O extends Molecule {
  
  float x, y;
  
  H2O(float x_, float y_) {
    x = x_;
    y = y_;
    hydrogen1 = new Atom(120, 2.20);
    hydrogen1 = new Atom(120, 2.20);
    oxygen = new Atom(152, 3.44);
  }


  void display() {
    hydrogen1.display(x-250, y+250, 0);
    hydrogen1.display(x+250, y+250, 0);
    oxygen.display(x, y, 0);
  }

  }
