int startx = 0;
int starty = 0;
public void setup()
{
  background(0);
  size(600, 600);

}
public void draw()
{
  sierpinski(startx, starty, 500);

}
public void mousePressed()//optional
{
  startx = mouseX;
  starty = mouseY;

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20) {
    fill(#84F2BC);
    triangle(x, y , x + len/2, y + len, x + len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y + len/2, len/2);
  }

}
