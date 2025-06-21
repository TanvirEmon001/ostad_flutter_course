void main() {
  // without function
  //area of circle
  double r = 3.6;
  double area = 3.1416 * (r * r);
  print("Area of the circle is: $area");
  print("");

  //using function
  print("Area of the circle is: ${areaOfCircle(5.6)}");
  print("Area of the triangle is: ${areaOfTriangle(5.5, 5.6)}");

  print("");

  greetUser("Tanvir Emon");
  greetUser("Jogn Doe");

  print("");

  greetUserWithCustomMessage("Tanvir", "Welcome to our class");
  greetUserWithCustomMessage("Sanzida", "Congratulations");

  print("");

  createAccount(firstName: "Tanvir", lastName: "Emon", mobile: 0177, email: "tanvir@gmail.com");
  createAccount();

  print("");
  print(sum(5, 5));
  print("");

  print("jodi kichui na dei tahole by default parameter er value jeta set kore dewa hobe oita print hobe");
  showInfo(age: 5, name: "Tanvir");
  showInfo(age: 5, name: "Tanvir");

  print("");
  print("");

  calculateAreaWithOptionalPrm(5, 5.6, "Emn");

}

areaOfCircle(double radius) {
  double area = 3.1416 * (radius * radius);
  return area.toStringAsFixed(3);
}

areaOfTriangle(double base, double height) {
  double area = (1 / 2) * base * height;
  return area.toStringAsFixed(3);
}

greetUser(String name) {
  print("Hi, $name! Welcome to our programming world!!");
}

greetUserWithCustomMessage(String name, String message){
  print("Hi $name, $message!");
}

createAccount({String firstName = "Account", String lastName = "User", int mobile = 010000, String email = "exampl@gmail.com"}){
  print("Congratulations $firstName!, Account created successfully done!");
  userDetails(firstName, lastName, mobile, email);
}

userDetails(String firstName, String lastName, int mobile, String email){
  print("Your account details:");
  print("Name: $firstName $lastName");
  print("Mobile: $mobile");
  print("E-mail: $email");
}

//
int sum(int num1, int num2) => num1 + num2;

void showInfo({String name ='Sadman',int age = 25}){
  print('Name: $name age : $age');
}

calculateAreaWithOptionalPrm(double length,double width, [String ? des]){

  double area = length*width;

  if(des != null){
    print("$des === $area");
  }else{
    print("Only area == $area");
  }

}