void main (){
  List<String> Hobbies = ["Book Reading", "Music", "Gardening"];
  print(Hobbies);
  Hobbies.addAll(["Travelling", "vlogging"]);
  print(Hobbies);
  Hobbies.sort();
  print(Hobbies);
  bool value=  Hobbies.contains("Travelling");
  print(value);
 
 Map<String,dynamic> myMap  = {
   "Name" : "Nouman",
   "Age": 21,
   "male" : true,
   "hobbies" : Hobbies
 };

  print(myMap["Name"]);
  print(myMap.keys);
  print(myMap.values);
  bool isValue = myMap.containsKey("fruits");
  print(isValue);
    
}