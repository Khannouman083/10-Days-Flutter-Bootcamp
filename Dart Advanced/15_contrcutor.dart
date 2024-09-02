late String name;
void main (){
   name= "Nouman";
   Mathematics math = Mathematics(50,2);
   Mathematics maths = Mathematics.namedConstructor();
  
   print(math.add());
   print(math.sub());
   print(math.mul());
   print(math.div());
}

class Mathematics {
  int a=0;
  int b =0;
  Mathematics(int n1, int n2){
    print("Constructor is called");
    this.a = n1;
    this.b = n2;
  }

  Mathematics.namedConstructor(){
    print("This is named constructor");
  }

  int add(){
    return this.a+this.b;
  }
   int sub(){
    return this.a-this.b;
  }
   int mul(){
    return this.a*this.b;
  }
   double div(){
    return this.a/this.b;
  }
}