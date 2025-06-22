class Vehicle {
  String? brand;
  Vehicle(this.brand);

  void showBrand() {
    print("This Vehicle's brand is $brand.");
  }
}

// child class or sub class

class Car extends Vehicle {
  String? model;
  Car(String brand, this.model) : super(brand);

  void showDetails() {
    print("Car brand: $brand, model: $model");
  }
}

void main(){
  Car myCar = Car("Toyota", "Corolla");
  myCar.showDetails();
  myCar.showBrand();

  print("");

  Car bmw = Car("BMW", "X2");
  bmw.showDetails();
  bmw.showBrand();
}