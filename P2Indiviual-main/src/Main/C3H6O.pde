
class C3H6O extends Molecule {

  float x, y, z;

  C3H6O(float x_, float y_, float z_) {
    super();
    x = x_;
    y = y_;
    z = z_;
    carbon = new Atom(85.0, 2.55, "Carbon.jpg");
    carbon = new Atom(85.0, 2.55, "Carbon.jpg");
    carbon = new Atom(85.0, 2.55, "Carbon.jpg");
    carbon = new Atom(85.0, 2.55, "Carbon.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20, "Hydrogen.jpg");
    oxygen = new Atom(76, 3.44, "Oxygen.jpg");
  }


  void display() {
    hydrogen1.display(x+325, y, 0);
    hydrogen1.display(x-325, y, 0);
    hydrogen1.display(x+170, y+150, +200);
    hydrogen1.display(x+170, y+150, -150);
    hydrogen1.display(x-170, y+150, +200);
    hydrogen1.display(x-170, y+150, -150);
    carbon.display(x+170.0, y+85, 0);
    carbon.display(x-170.0, y+85, 0);
    carbon.display(x, y, 0);
    oxygen.display(x,y-200.0,0);
  }
}
