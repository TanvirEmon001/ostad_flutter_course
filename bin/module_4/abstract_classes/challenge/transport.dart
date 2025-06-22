abstract class Transport {
  void ride();
  void stop();
}// parent class ends here

class Car extends Transport {
  bool? acAvailable;
  Car(this.acAvailable);

  @override
  void ride() {
    print("Riding in a Car with AC: $acAvailable");
  }

  @override
  void stop() {
    print("Car has stopped at the destination");
  }

}//Car class ends here

class Bike extends Transport {
  bool? helmetRequired;

  Bike(this.helmetRequired);

  @override
  void ride() {
    print("Riding on a Bike with helmet: $helmetRequired");
  }

  @override
  void stop() {
    print("Bike has stopped at the destination");
  }
}// Bike class ends here

class Rickshaw extends Transport {
  bool? isElectric;

  Rickshaw (this.isElectric);
  @override
  void ride() {
    print("Riding on a Electric Rickshaw: $isElectric");
  }

  @override
  void stop() {
    print("Rickshaw has stopped at the destination");
  }

}// Rickshaw class ends here

void main(){
  Car car = Car(true);
  car.ride();

  Bike bike = Bike(true);
  bike.ride();
  bike.stop();

  Rickshaw rickshaw = Rickshaw(true);
  rickshaw.ride();
  rickshaw.stop();
}