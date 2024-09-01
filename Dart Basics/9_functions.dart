void main (){
   int n = 8;

   print(factorial(n));
   print(addNumber(4, 5));
}

int factorial(int n){
  int fact =1;
  for(int i=n;i>1;i--){
     fact = fact*i;
  }
  return fact;
}

int addNumber (int a,int b){
  int c =a+b;
  return c;
}