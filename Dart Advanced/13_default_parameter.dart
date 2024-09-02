void main(){
   print(areaCircle(radius: 10));
   print(areaCircle());
}

double areaCircle({double radius = 5}) {
  // Calculate and return the area of the circle
  // Area = π * radius^2
  return 3.14 * radius * radius; // Using 3.14 as the value of π
}