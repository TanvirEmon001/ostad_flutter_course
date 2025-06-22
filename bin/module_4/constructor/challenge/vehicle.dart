class Vehicle {
  String? brand;
  Vehicle(this.brand);

  void move(){
    print("The vehicle is moving");
  }


}// parent class ends here

// child class
class Bus extends Vehicle{
  int? capacity;
  Bus(String brand, this.capacity) : super(brand);

  @override
  move(){
    print("The bus of brand $brand is moving with $capacity students");
  }

}// Bus class ends here

//another child class
class Van extends Vehicle{
  String? color;
  Van(this.color, String brand) : super(brand);

  @override
  move(){
    print("The van of brand $brand and color $color is moving");
  }
}// Van class ends here

void main(){
  Bus bus = Bus("Hino Ak 1j", 50);
  bus.move();
  
  print("");
  
  Van van = Van("Yellow", "Mercedes-Benz");
  van.move();
  
}// main function ends here