// polar bonds have a difference of 0.4 to 1.7
// lower than 0.4 is more covalent
// higher is more ionic

class Atom {
  float size;
  float weight;
  float x;
  float y;
  float z;
  
  Atom(float size, float weight){
    this.size = size;
    this.weight = weight;
  }
  
  void display(float x, float y, float z){
    fill(255);
    lights();
    sphereDetail(10);
    translate(x, y, z);
    sphere(size);
    fill(0);
    translate(0-x, 0-y, 0-z);
  }
}

//int electronPos(type){
//  return position;
//}
