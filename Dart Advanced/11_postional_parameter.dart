void main (){
  
  print(userData( "Nouman",21, "male",));
}

Map userData (String name, int age, String gender){
  return {
     "name" : name,
     "age" : age,
     "gender" : gender
  };
}