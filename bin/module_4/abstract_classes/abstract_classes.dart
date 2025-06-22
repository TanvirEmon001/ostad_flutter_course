abstract class Animal {
  void makeSound();
  void handsAndLegs();
  void sleep(String animal) {
    print("This $animal is sleeping.........");
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("Dog make sound like gheu gheu!");
  }

  @override
  void handsAndLegs() {
    print("Dog have 4 legs");
  }
}

class Cat extends Animal {
  @override
  void handsAndLegs() {
    print("Cat have 4 legs");
  }

  @override
  void makeSound() {
    print("Cat make sound like meow meow!");
  }

}

void main(){
  Dog dog = Dog();
  dog.sleep("Dog");
  dog.makeSound();
  dog.handsAndLegs();

  print("");

  Cat cat = Cat();
  cat.sleep("Cat");
  cat.makeSound();
  cat.handsAndLegs();

}