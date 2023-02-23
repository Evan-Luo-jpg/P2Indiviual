Atom nitrogen;

class NH3 extends Molecule {
  
  float x, y, z;
  
  NH3(float x_, float y_, float z_) {
    super(1000,1000);
    x = x_;
    y = y_;
    z = z_;
    nitrogen = new Atom(15.5, 3.04, "Nitrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
  }


  void display() {
    hydrogen1.display(x-25.0, y-20.0, z-5.0);
    hydrogen1.display(x+25.0, y-20.0, z-5.0);
    hydrogen1.display(x, y+25.0, z-5.0);
    nitrogen.display(x, y, 0);
  }

}
