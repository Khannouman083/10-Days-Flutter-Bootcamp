void main (){
  MobilePhone mobile = MobilePhone();
    mobile.thickness = 5;
    mobile.height = 50;
    mobile.width = 30;
    
    print(mobile.height);
    print(mobile.width);
    print(mobile.thickness);

  
}

class Electronics {
  double height = 76;
  double width = 57;
  double thickness = 10;

  void watch (){
    print("The item is being watched");
  }
}

class MobilePhone extends Electronics{

  void callSomeone (){
    print("Item is calling someone");
  }
 
  void playGames (){
    print("Playing games on item");
  }
}