abstract class Vehicle {
  int? _speed = 0;

  void move();

  // setter method
  void setSpeed(int speed) {
    _speed = speed;
  }

  // getter method
  int? getSpeed() {
    return _speed;
  }

} // Vehicle Class ends here...

// sub class of Vehicle -------
class Car extends Vehicle {

  @override
  void move() {
    print("The car is moving at ${getSpeed()} km/h");
  }

}
