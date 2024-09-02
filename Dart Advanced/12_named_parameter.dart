void main (){
  
  print(userData(name: "Nouman", gender: "Male", age: 21));
}

Map userData ({required String name,required int age,required String gender}){
  return {
     "name" : name,
     "age" : age,
     "gender" : gender
  };
}