void main (){
  int age =101;
   
  String result = age<18 ? "You cannot vote" : age<=0 ? "You are not born" : age>18 && age>100 ?
   "Are you sure you are alive" : "You can vote";
   print(result);

}