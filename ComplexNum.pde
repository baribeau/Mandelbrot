class Complex{
  
  float a;
  float b;
  String label;
  
  Complex(float r, float c){
    this.a = r;
    this.b = c;
    this.label = "";
  }
  
  Complex(float r, float c, String l){
    this.a = r;
    this.b = c;
    this.label = l;
  }
  
  void display(){
    String printedComplex;

    if (a==0)
      if (b==0)
        printedComplex = "0";
      else if (b==1)
        printedComplex = "i";
      else if (b==-1)
        printedComplex = "-i";
      else
        printedComplex = b+"i";
        
    else
      if (b==0)
        printedComplex = str(a);
      else if (b==1)
        printedComplex = a + " + i";
      else if (b==-1)
        printedComplex = a + " - i";
      else if (b>0)
        printedComplex = a+ " + " +b+"i";
      else
        printedComplex = a+ " - " + -1*b +"i";
       
    
    if ( label.equals(""))
      println(printedComplex);
    else
      println(label + " = " + printedComplex);
  }
  
  
  
  Complex add(Complex other){
    float a1, b1, a2, b2;
    
    a1 = this.a;
    b1 = this.b;
    
    a2 = other.a;
    b2 = other.b;
    
    return new Complex(a1+a2, b1+b2);
  }
  
  Complex multiply(Complex other){
    float a1, b1, a2, b2;
    
    a1 = this.a;
    b1 = this.b;
    
    a2 = other.a;
    b2 = other.b;
     
    return new Complex (a1*a2-b1*b2, a1*b2+b1*a2);
    
  }
  
  Complex square(){
    float u, v;
    
    u = this.a;
    v = this.b;
    
    return new Complex( pow(u,2)-pow(v,2), 2*u*v);
    
    
  }
  
  float absolute(){
    float u, v;
    
    u = this.a;
    v = this.b; 
    
    return sqrt(pow(u,2)+pow(v,2));
    
  }
    
  
}