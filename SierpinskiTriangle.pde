int baseCase;
public void setup()
{
  baseCase = 20;
  size(500,500);
}
public void draw()
{
  sierpinski(50,450,400);
}
public void keyPressed()//optional
{
  if(key == 'a')
  {
    if(baseCase > 5)
    {
      baseCase-=1;
    }
  } else if(key == 'd')
  {
    baseCase+=1;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len < baseCase)
  {
    triangle(x,y,x + len, y,x + (len/2), y -len);
  } else
  {
    sierpinski(x,y,len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
