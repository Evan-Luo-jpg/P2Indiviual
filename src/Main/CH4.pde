Atom carbon;

class CH4 extends Molecule {
  
  float x, y, z;
  
  CH4(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
    carbon = new Atom(170, 2.55);
    hydrogen1 = new Atom(120, 2.20);
    hydrogen1 = new Atom(120, 2.20);
    hydrogen1 = new Atom(120, 2.20);
    hydrogen1 = new Atom(120, 2.20);
  }


  void display() {
    hydrogen1.display(x, y-250, 0);
    hydrogen1.display(x-240, y+250, z-190);
    hydrogen1.display(x+240, y+250, z-190);
    hydrogen1.display(x, y+250, z+250);
    carbon.display(x, y+50, 0);
  }

}
