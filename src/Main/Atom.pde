// polar bonds have a difference of 0.4 to 1.7
// lower than 0.4 is more covalent
// higher is more ionic

class Atom {
  PShape atom;
  PImage image;
  float size;
  float weight;
  float x;
  float y;
  float z;
  
  Atom(float size, float weight, String img){
    this.size = size;
    this.weight = weight;
    this.image = loadImage(img);
  }
  

void display(float x, float y, float z){
    fill(255);
    lights();
    sphereDetail(10);
    noStroke();
    pushMatrix();
    translate(x, y, z);
    rotateY(PI/2);
    atom = createShape(SPHERE,size);
    atom.setTexture(image);
    shapeMode(CENTER);
    shape(atom,0,0);
    popMatrix();
    fill(0);
    
}

}
