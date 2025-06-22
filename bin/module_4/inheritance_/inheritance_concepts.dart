class Animal {
  void eat() {
    print("This animal eats food.");
  }

  fly(String animal) {
    String characteristics = "$animal can fly!";
    return characteristics;
  }

  walk(String animal) {
    String characteristics = "$animal can walk";
    return characteristics;
  }

  walkAndFly(String animal) {
    print("${walk(animal)} and also ${fly(animal)}");
  }
}

class Dog extends Animal {
  void bark() {
    print("The dog barks.");
  }
}

class Bird extends Animal{}

void main() {
  Dog myDog = Dog();
  myDog.eat();
  myDog.bark();
  print(myDog.walk("Dog"));
  myDog.walk("Dog");

  print("");

  Bird myBird = Bird();
  myBird.walkAndFly("Bird");
}
