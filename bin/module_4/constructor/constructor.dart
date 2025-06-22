class Person{
  String? name;
  int? age;

  // Person(String name, int age){
  //   this.name = name;
  //   this.age = age;
  // }
  //same to below line
  Person(String this.name, int this.age);

  void introduce(){
    print("Hi, my name is $name and I'm $age years old.");
  }


}
void main(){
  Person p1 = Person("Tanvir", 20);
  p1.introduce();
}