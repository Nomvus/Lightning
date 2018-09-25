int startX = 505, startY = 345, endX = 0, endY = 0;
thor godOfThunder;
void setup()
{
  size(800,800);
  background(0);
  strokeWeight(5);

  godOfThunder = new thor();
  
}
void draw()
{
  stroke(42, 227, 232);
  while(endX < 800)
  {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }

  noStroke();
  godOfThunder.show();
}
void mousePressed()
{
  //background(1, 30, 31);

  startX = 505;
  endX = 0;
  startY = 345;
  endY = 0;
}

class thor
{
  
  void head()
  {
    fill(211, 182, 15);
    ellipse(400, 400, 40, 40);
  }
  void leftArm()
  {  
    //arm
    fill(211, 182, 15);
    quad(360, 430, 380, 450, 350, 530, 330, 520);
    //fist
    fill(211, 182, 15);
    ellipse(338, 528, 28, 28);
}
  void rightArm()
  {
    //upper arm
    fill(211, 182, 15);
    quad(460, 425, 470, 455, 500, 420, 480, 410);
    //forearm
    fill(211, 182, 15);
    quad(480, 410, 500, 420, 520, 365, 490, 365);
  }
  void leftLeg()
  {
    fill(211, 182, 15);
    quad(410, 530, 430, 550, 410, 640, 385, 640);
  }
  void rightLeg()
  {
    fill(211, 182, 15);
    quad(470, 550, 500, 550, 535, 640, 510, 640);
  }
  void cape()
  {
    fill(255, 0, 0);
    quad(350, 420, 450, 410, 540, 570, 400, 550);
    
  }
  void ax()
  {    
    fill(42, 227, 232);
    ellipse(505, 345, 40, 40);
  }
  
  thor()
  { 
    
    
  }
  
  void show()
  {
    head();
    leftArm();
    rightArm();
    leftLeg();
    rightLeg();
    cape();
    ax();
  }
  
  
  
  
  
}