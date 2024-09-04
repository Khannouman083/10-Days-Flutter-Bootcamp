void main (){
   MobilePhone phone = MobilePhone("s23", "Samsung");
   phone.watch();
}

class Electronics {
  double height = 76;
  double width = 57;
  double thickness = 10;

  Electronics (String brand){
    print("electronics item is watched $brand");
  }

  void watch (){
    print("The item is being watched");
  }
}
class MobilePhone extends Electronics{
  MobilePhone (String model,String brand): super(brand){
    print("Mobile phone is watched $model");
  }
}