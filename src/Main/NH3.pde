//NH3 molecule display

Atom nitrogen;

class NH3 extends Molecule {
  
  float x, y, z;
  
  NH3(float x_, float y_, float z_) {
    super();
    x = x_;
    y = y_;
    z = z_;
    nitrogen = new Atom(77.5, 3.04, "Nitrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
  }


  void display() {
    hydrogen1.display(x+110.0, y+25.0, z-150.0);
    hydrogen1.display(x+110.0, y+25.0, z+150.0);
    hydrogen1.display(x-150, y+25, z);
    nitrogen.display(x, y, 0);
  }

}
