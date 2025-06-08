import 'dart:io';

void main(){
  var userName = "Tanvir Emon";
  var password = 160274;

  stdout.write("Enter your username: ");
  String? name = stdin.readLineSync()!;

  stdout.write("Enter your password: ");
  var pass = stdin.readLineSync()!;

  if(name == userName && pass == password){
    print("Congrates! $name\nLogin successful");
  }else if(name != name && pass == password){
    print("Username not found!");
  }else if(name == name && pass != password){
    print("Invalid password. Try correct password");
  }else{
    print("Invalid credential!");
  }

}