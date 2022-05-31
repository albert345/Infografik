String Medie = "Downloads";
// Size of each cell in the grid, ratio of window size to video size
// 80 * 8 = 640
// 60 * 8 = 480
int videoScale = 30;
Graf g = new Graf();

// Number of columns and rows in our system
int cols, rows;

void setup() {
  size(1500, 1000);
  g.loadData();
}

// Void loop til grid-matrix
void draw() {

  /*
  // Begin loop for columns
   for (int i = 2; i < cols; i++) {
   // Begin loop for rows
   for (int j = 0; j < 30; j++) {
   
   // Scaling up to draw a rectangle at (x,y)
   int x = i*videoScale;
   int y = j*videoScale;
   fill(255);
   stroke(0);
   // For every column and row, a rectangle is drawn at an (x,y) location scaled and sized by videoScale.
   rect(x, y, videoScale, videoScale);
   
   }
   
   }*/
  g.loadData();
  g.Highlight();
  g.Text();
}





void keyPressed() {
  if (key == 'd') {
    Medie = "Downloads";
  } else if (key == 's') {
    Medie = "Streaming";
  } else if (key == 'f') {
    Medie = "Fysiske medier";
  }
  println(Medie);
}
