abstract class Shape {
  void draw();
  double area();
}

class Circle extends Shape{
  double? radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.1416 * radius! * radius!;
  }

  @override
  void draw() {
    print("Drawing a Circle");
  }

}

class Rectangle extends Shape {
  double? height;
  double? width;

  Rectangle(this.height, this.width);


  @override
  double area() {

    return width! *height!;
  }

  @override
  void draw() {
    print("Drawing a Rectangle");
  }

}

void main(){
  Circle circle = Circle(5);
  circle.draw();
  print("Area: ${circle.area()}");
  print("");

  Rectangle rectangle = Rectangle(4, 6);
  rectangle.draw();
  print("Area: ${rectangle.area()}");

}