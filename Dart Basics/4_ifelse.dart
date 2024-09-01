void main (){
  int age = 19;
    
  if(age<18){
    print("You cannot vote");  
  }
  else if(age<=0){
    print("You are not born");
  }
  else if(age>18 && age>100){
    print("Are you sure you are alive");
  }
  else{
    print("You can vote");
    }
}