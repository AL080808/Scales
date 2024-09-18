void setup() {
  size(500, 500);
  background(255);

  // Call the pattern function to create multiple rows of scales
  scalePattern();
}

void scale(int x, int y) {
  // A complex shape for a single scale
  noStroke();
  fill(100, 200, 255); // A light blue color for the scale
  
  // Draw a bezier curve to simulate a curved, dragon scale-like shape
  beginShape();
  vertex(x, y);
  bezierVertex(x + 35, y - 40, x + 75, y - 40, x + 100, y);
  bezierVertex(x + 85, y + 40, x + 25, y + 40, x, y);
  endShape(CLOSE);
  
  fill(80, 170, 220); // Darker blue for the inner part of the scale
  ellipse(x + 50, y, 30, 20); // Inner decoration
}

void scalePattern() {
  int rows = (height / 20) + 4; 
  int cols = (width / 20) + 3; 
  int scaleWidth = 100;
  int scaleHeight = 30; // Adjusted back to original height

  int xOffsetShift = -50; // Shift left
  int yOffsetShift = 10; // Further shift down to cover the lower part

  // Use nested loops to create a grid pattern of scales
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      int xOffset = j * (scaleWidth - 20) + xOffsetShift; // Shifted horizontally
      int yOffset = i * (scaleHeight - 10) + yOffsetShift; // Shifted vertically

   
      if (i % 2 == 0) {
        xOffset += scaleWidth / 2;
      }

      scale(xOffset, yOffset);
    }
  }
}
