int duration = 1000; // 1 second
ArrayList<PVector> startingPositions = new ArrayList<PVector>();
ArrayList<PVector> endingPositions = new ArrayList<PVector>();

class Molecule {
  float posX, posY;
  long startTime;
  
  Molecule(float startX, float startY){
    posX = startX;
    posY = startY;
    startingPositions.add(new PVector(posX, posY));
    endingPositions.add(new PVector(posX, posY));
  }
  
  void moveCenter(float endX, float endY){
    int index = startingPositions.size() - 1;
    startingPositions.set(index, new PVector(posX, posY));
    endingPositions.set(index, new PVector(endX, endY));
    startTime = millis();

  }
  
  void update() {
    float time = (millis() - startTime) / (float) duration;
    time = constrain(time, 0, 1); // make sure time stays between 0 and 1
    int index = startingPositions.size() - 1;
    PVector currentPosition = PVector.lerp(startingPositions.get(index), endingPositions.get(draggingIndex), time);
    print(draggingIndex);
    posX = currentPosition.x;
    posY = currentPosition.y;
  }
}
