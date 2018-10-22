void setup(){
  size(1000,1000);
  background(255);
  stroke(0);
  noLoop();
  
}


void draw(){

  for(float a=-2; a<=1; a+=0.002){
    for(float b=-1.5; b<=1.5; b+=0.002){
      Complex c = new Complex(a,b);
      
      Complex z = c;
      int n = 1;
      
      while(z.absolute() < 2 && n < 200 && z != z.square().add(c)){
        z = z.square().add(c);
        n++;
      }
      
      if( z.absolute()<2 ){
        float xVal = getScreenX(a);
        float yVal = getScreenY(b);
        point(xVal,yVal);
      }    
    }   
  }
  
  drawAxes();
}

float getScreenX(float n){
  float x = (width/3)*(n+2);
  return x;
}

float getScreenY(float n){
  float y = (width/3)*(1.5-n);
  return y;
}

void drawAxes(){
  float yAxis = getScreenX(0);
  stroke(255,0,0);
  line(yAxis,0,yAxis,height);
  line(0,height/2,width,height/2);
}