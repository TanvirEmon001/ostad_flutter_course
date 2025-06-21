import 'vehicle.dart';

// main function
void main() {
  Car carObj = Car();

  carObj.setSpeed(5);
  carObj.move();

  carObj.setSpeed(50);
  carObj.move();
}
