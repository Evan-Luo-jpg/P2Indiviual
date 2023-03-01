Atom hydrogen1;
Atom oxygen;




class H2O extends Molecule {

  float x, y;

  H2O(float x_, float y_) {
    super();
    print("MouseX: " + mouseX);
    x = x_;
    y = y_;
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    oxygen = new Atom(76, 3.44, "Oxygen.jpg");
  }


  void display() {
    hydrogen1.display(x-125.0, y+125.0, 0);
    hydrogen1.display(x+125.0, y+125.0, 0);
    oxygen.display(x, y, 0);
    
  }

}
