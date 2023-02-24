//int duration = 1000; // 1 second
//ArrayList<PVector> startingPositions = new ArrayList<PVector>();
PVector location, target;

class Molecule {
  float xl, yl, speedX, speedY, rotation;
  float speed = 1;
  //long startTime;
  
  Molecule(){
    //xt = startX;
    //yt = startY;
    //startingPositions.add(new PVector(x, y));
  }
  
  void moveCenter(float startX, float startY, float targetX, float targetY){
    xl = startX;
    yl = startY;
    location = new PVector(xl, yl);
    target = new PVector(targetX, targetY);
    rotation = atan2(location.y - target.y, location.x - target.x) / PI * 180 + random(-2, 2);
    //rotation = PVector.angleBetween(target, location);
    speedX = cos(rotation/180*PI)*speed;
    speedY = sin(rotation/180*PI)*speed;
    if(PVector.dist(location, target) >= 5){
      xl = location.x - speedX;
      yl = location.y - speedY;
    }
    println("Target: "+target);
    println("Location: "+location);
    println("Rotation: "+rotation);
    //startingPositions.add(new PVector(x, y));
    //startTime = millis();
  }
  
  
}
