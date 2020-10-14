int fps = 120;
float x = 500;
float y = x;
float velX,velY;
float moveSpeed = .8;
boolean left,right,up,down; 
 
void setup() {
  size(1000,1000);
  frameRate(fps);
  rectMode(CENTER);
}
 
void draw() {
  background(0);//cls
  x+=velX; 
  y+=velY;
  
  if(up)
    velY-=moveSpeed;
  if(down)
    velY+=moveSpeed;
  if(left)
    velX-=moveSpeed;
  if(right)
    velX+=moveSpeed;
    
  velX*=moveSpeed;
  velY*=moveSpeed;
 
  fill(0,255,0);
  rect(x,y,100,100);
  println(x,y,velX,velY);
}
 
void keyPressed() {
  setDirection(key, true);
}
 
void keyReleased() {
  setDirection(key, false);
}
 
boolean setDirection(char c, boolean isMoving) {
  switch (c) {
  case 'w':
    return up = isMoving;
  case 's':
    return down = isMoving;
  case 'a':
    return left = isMoving;
  case 'd':
    return right = isMoving;
  default:
    return isMoving;
  }
}
