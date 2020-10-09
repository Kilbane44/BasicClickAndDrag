int boxX = 100;
int boxY = 100;
int boxW = 50;
int boxH = 100;
boolean isClicked = false;


void setup()
{
  rectMode(CENTER);
  size(800,800);
}

void draw()
{
  background(0);
  rect(boxX,boxY, boxW, boxH);
  
  
}


void mouseDragged()
{
  /*if(mouseX > boxX)
  {
    if(mouseX < boxX + boxW)
    {
      if(mouseY > boxY)
      {
        if(mouseY < boxY + boxH)
        {
          boxX = mouseX -boxW/2;
          boxY = mouseY -boxH/2;
        }
        
      }
    }
  }
  */
  
  float d = dist(mouseX,mouseY,boxX,boxY);
  
  if(d < 50)
  {
    boxX = mouseX;
    boxY = mouseY;
  }
}