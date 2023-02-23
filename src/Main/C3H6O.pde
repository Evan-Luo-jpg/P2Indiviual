
class C3H6O extends Molecule {

  float x, y, z;

  C3H6O(float x_, float y_, float z_) {
    super(x_,y_);
    x = x_;
    y = y_;
    z = z_;
    carbon = new Atom(17.0, 2.55, "Carbon.jpg");
    carbon = new Atom(17.0, 2.55, "Carbon.jpg");
    carbon = new Atom(17.0, 2.55, "Carbon.jpg");
    carbon = new Atom(17.0, 2.55, "Carbon.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20, "Hydrogen.jpg");
    oxygen = new Atom(15.2, 3.44, "Oxygen.jpg");
  }


  void display() {
    hydrogen1.display(x+65, y, 0);
    hydrogen1.display(x-65, y, 0);
    hydrogen1.display(x+34, y+30, +40);
    hydrogen1.display(x+34, y+30, -30);
    hydrogen1.display(x-34, y+30, +40);
    hydrogen1.display(x-34, y+30, -30);
    carbon.display(x+34.0, y+17, 0);
    carbon.display(x-34.0, y+17, 0);
    carbon.display(x, y, 0);
    oxygen.display(x,y-40.0,0);
  }
}
