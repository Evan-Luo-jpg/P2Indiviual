// polar bonds have a difference of 0.4 to 1.7
// lower than 0.4 is more covalent
// higher is more ionic

class Atom {
  float size;
  float weight;
  float x;
  float y;
  
  Atom(float size, float weight){
    this.size = size;
    this.weight = weight;
  }
  
  void display(int x, int y){
    fill(255);
    lights();
    sphereDetail(10);
    translate(x, y, 0);
    sphere(size);
    fill(0);
    translate(0-x, 0-y, 0);
  }
}

//int electronPos(type){
//  return position;
//}
