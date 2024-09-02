void main (){
  Fraction frac = Fraction();
  // frac.num =10;
  // frac.den =5;
  // frac.fracFunction();
  frac.setNum = 11;
  frac.setDen = 5;

  print(frac.getNum);
  print(frac.getDen);
  frac.fracFunction();

}

class Fraction {
  int _num= 0;
  int _den=0;

  void set setNum (int val){
    _num = val*6;
  }

  void set setDen (int val){
    _den = val*10;
  }

  int get getNum{
    return _num;
  }

  int get getDen{
    return _den;
  }

  void fracFunction(){
    print("$_num/$_den");
  }
  
}