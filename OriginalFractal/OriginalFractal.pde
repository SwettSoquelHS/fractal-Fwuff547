void setup(){
    size (800, 800);
}

float angle = 0;
void draw(){
  background((float)Math.random()*225, (float)Math.random()*225, (float)Math.random()*225);
  drawTri(width/2, height/2, 1600, angle++);
  drawPropeller(width/2, height/2, 800, angle++);
  drawUno(width/2, height/2, 400, angle++);
}

void drawPropeller(float x, float y, float leng, float ang) {
  pushMatrix();
  translate(x,y);
  rotate(radians(ang));
  fill(0,0,(float)Math.random()*225);
  ellipse(0,0,leng/10,leng);
  fill(0,0,(float)Math.random()*225);
  ellipse(0,0,leng,leng/10);
  if(leng>=5) {
    drawPropeller(0,0, leng-26, ang++);


  }
  popMatrix();
}
void drawTri(float x, float y, float leng, float ang) {
  pushMatrix();
  translate(x,y);
  rotate(radians(ang));
  fill((float)Math.random()*225,0,0);
  ellipse(0,0,leng/7, leng); 
  if(leng>=800) {
    drawTri(0,0, leng-26, ang++);


  }
  popMatrix();
}
void drawUno(float x, float y, float leng, float ang) {
  pushMatrix();
  translate(x,y);
  rotate(radians(ang));
  fill((float)Math.random()*225,0,(float)Math.random()*225);
  ellipse(0,0,leng/15, leng); 
  if(leng>=0) {
    drawUno(0,0, leng-13, ang++);


  }
  popMatrix();
}
