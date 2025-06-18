void main(){
  // without function
  //area of circle
  double r = 3.6;
  double area = 3.1416 * (r*r);
  print("Area of the circle is: $area");
  print("");


  //using function
  print("Area of the circle is: ${areaOfCircle(5.6)}");
  print("Area of the triangle is: ${areaOfTriangle(5.5, 5.6)}");

}

areaOfCircle(double radius){
  double area = 3.1416 * (radius * radius);
  return area.toStringAsFixed(3);
}

areaOfTriangle(double base, double height){
  double area = (1/2) * base * height;
  return area.toStringAsFixed(3);
}