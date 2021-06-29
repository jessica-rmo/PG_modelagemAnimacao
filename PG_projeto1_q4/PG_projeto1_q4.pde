float alpha, w, Px,Py, Cx, Cy;
int i;

void conf1(){
  strokeWeight(10);
  stroke(255,0,0);
}

void initialSetup(){
  //background(205,205,255);
  translate(400,400);
  strokeWeight(1);
  stroke(0);
  line(-400,0,400,0);
  line(0,400,0,-400);
  scale(1,-1);
}


void setup(){
  size(800,800);
  frameRate(60); 
  
  alpha = 0;
  w = PI/(4*frameRate); //
  Px = -20;
  Py = 0;
  Cx = 0;
  Cy = 0;
  i = 1;
}

void draw(){
  initialSetup();
  if (alpha >= PI) {
    alpha = 0;
    Cx = Px;
    Px += -20*pow(-2,i);
    i++;
  }
  println(Cx,Px,i);
  
  translate(Cx,Cy);
  rotate(alpha);
  translate(-Cx,-Cy);
  conf1();
  point(Px,Py);
  
  alpha += w;
}
