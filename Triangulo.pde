  class Triangulo implements Figura
  {
  float x,y,l,rc,ri,a,a1,deltax,deltay,h,b,rota;
  color c;
  
  Triangulo (float x_,float y_,float l_, float rota_,color c_){
    x=x_;
    y=y_;
    l=l_;
    c=c_;
    rc=(l*sqrt(3))/3f;
    b=l;
    a1=TWO_PI/3;
    rota = rota_;
  }
  
  void display(){
   c=img.get(ceil(x),ceil(y));
    fill(c-var);
    pushMatrix();
    translate(x,y);
    rotate(HALF_PI - PI/3 + rota);
    beginShape();
    
    for(float a = 0;a<TWO_PI;a+=a1) {
      deltax=cos(a)*rc;
      deltay=sin(a)*rc;
      
      vertex(deltax,deltay);
    }
  endShape(CLOSE);
  popMatrix();
  }
}