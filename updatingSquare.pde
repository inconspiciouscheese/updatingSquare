PVector location, mousePosition;
float distance, size;
int maxSize;

void setup() {
  size(500, 500);
  rectMode(CENTER);
  maxSize = 200;
}

void draw() {
  background(0);
  location = new PVector(width/2, height/2);
  mousePosition = new PVector(mouseX, mouseY);
  distance = location.dist(mousePosition);

  if (distance < 250) {
    size = 250 - distance;
  } else {
    size = 0;
  }
  fill(255);
  rect(location.x, location.y, size, size);

  fill(255, 0, 0); //to show the mouse on screen
  rect(mouseX, mouseY, 10, 10);

  //saveFrame("updatingSquare-###.png");
}
