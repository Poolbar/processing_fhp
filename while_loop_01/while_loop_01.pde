//while_loop_01
//homework_03
//carina christler

size(800,800);
ellipseMode(CENTER);
noStroke();
background(200);
int r = 200;
float x = 0;
while (x < width+80)
{
  float y = 0;
  while (y < height+40)
  {
    fill(random(255),random(200),random(255),70);
    ellipse(x,y,r*0.8,r);
    y = y + 50;
  }
  x = x + 40;
}
