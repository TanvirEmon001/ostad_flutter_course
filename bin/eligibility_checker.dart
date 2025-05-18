import 'dart:io';

void main(){
  stdout.write("How old are you?\n");
  stdout.write("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync()!);

  if(age == 1){
    print("");
  }

}