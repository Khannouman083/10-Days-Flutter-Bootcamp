void main (){
   Mobile phone = Mobile();
   phone.watch();
}

class Electronics {
  void watch (){
    print("item is watched");
  }
}

class Mobile extends Electronics {
  void watch(){
    print("Mobile is watched");
    super.watch();
  }

}