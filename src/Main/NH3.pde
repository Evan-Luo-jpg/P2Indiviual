Atom nitrogen;

class NH3 extends Molecule {
  
  float x, y, z;
  
  NH3(float x_, float y_, float z_) {
    super();
    x = x_;
    y = y_;
    z = z_;
    nitrogen = new Atom(15.5, 3.04, "Nitrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
  }


  void display() {
    hydrogen1.display(x+22.0, y+5.0, z-30.0);
    hydrogen1.display(x+22.0, y+5.0, z+30.0);
    hydrogen1.display(x-30, y+5, z);
    nitrogen.display(x, y, 0);
  }

}
