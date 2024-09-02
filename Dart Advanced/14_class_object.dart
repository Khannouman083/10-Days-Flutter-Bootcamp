void main (){
   
   Mathematics math = Mathematics();
   print(math.add(50, 2));
   print(math.sub(50, 2));
   print(math.mul(50, 2));
   print(math.div(50, 2));
}

class Mathematics {

  int add(int x,int y){
    return x+y;
  }
   int sub(int x,int y){
    return x-y;
  }
   int mul(int x,int y){
    return x*y;
  }
   double div(int x,int y){
    return x/y;
  }
}