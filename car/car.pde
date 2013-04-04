void setup() {
 size(500, 500);

}

int x = 200;
int mountain_x = 100;
int mountain_v = -1;

void draw() {
  noStroke();
  
  background(225, 25, 0);
  
  fill(147, 147, 147);
 //triangle(x1, y1, x2, y2, x3, y3);
  triangle(mountain_x, 310, mountain_x + 300, 310, mountain_x + 150, 150);

  // draw the ground
  fill(110, 170, 120);
  rect(0, 310, width, height - 310);
  
  // draw a green car
  fill(150, 150, 150);
  ellipse(x + 30, 320, 90, 20);

  fill(0,255,0);
  rect(x, 300, 80, 20);
  rect(x + 10, 285, 60, 15);
  
  fill(150, 170, 200);
  rect(x + 47, 287, 20, 10);
  rect(x + 25, 287, 20, 10);
  
  fill(0, 0, 0);
  ellipse(x + 20, 320, 20, 20);
  ellipse(x + 60, 320, 20, 20);
  
mountain_x = mountain_x + mountain_v;
if(mountain_x <= -300) {
  mountain_x = 500; 
}

}
