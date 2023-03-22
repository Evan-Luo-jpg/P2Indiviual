//The super class for the other molecules for orientation and movement

PVector location, target;

class Molecule {
  float xl, yl, speedX, speedY, rotation;
  float speed = 5;
  
  Molecule(){
  }
  
  void moveCenter(float startX, float startY, float targetX, float targetY){
    xl = startX;
    yl = startY;
    location = new PVector(xl, yl);
    target = new PVector(targetX, targetY);
    rotation = atan2(location.y - target.y, location.x - target.x) / PI * 180 + random(-2, 2);
    speedX = cos(rotation/180*PI)*speed;
    speedY = sin(rotation/180*PI)*speed;
    if(PVector.dist(location, target) >= 10){
      xl = location.x - speedX;
      yl = location.y - speedY;
    }
  }
  
  
}
