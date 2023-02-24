Atom carbon;

class CH4 extends Molecule {
  
  float x, y, z;
  
  CH4(float x_, float y_, float z_) {
    super();
    x = x_;
    y = y_;
    z = z_;
    carbon = new Atom(17.0, 2.55, "Carbon.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(12.0, 2.20,"Hydrogen.jpg");
  }


  void display() {
    hydrogen1.display(x, y+25.0, 0);
    hydrogen1.display(x-24.0, y-25.0, z-19.0);
    hydrogen1.display(x+24.0, y-25.0, z-19.0);
    hydrogen1.display(x, y-25.0, z+25.0);
    carbon.display(x, y-10.0, -1.0);
  }

}
