//CH4 molecule display

Atom carbon;

class CH4 extends Molecule {
  
  float x, y, z;
  
  CH4(float x_, float y_, float z_) {
    super();
    x = x_;
    y = y_;
    z = z_;
    carbon = new Atom(85.0, 2.55, "Carbon.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
    hydrogen1 = new Atom(60.0, 2.20,"Hydrogen.jpg");
  }


  void display() {
    hydrogen1.display(x, y+125.0, 0);
    hydrogen1.display(x-120.0, y-125.0, z-95.0);
    hydrogen1.display(x+120.0, y-125.0, z-95.0);
    hydrogen1.display(x, y-125.0, z+160.0);
    carbon.display(x, y-50.0, -15.0);
  }

}
