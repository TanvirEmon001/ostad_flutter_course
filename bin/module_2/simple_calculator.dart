import 'dart:io';

void main(){
  stdout.write("Welcome to simple calculator!\n");
  stdout.write("======--------=======\n");

  stdout.write("Enter first number: ");
  double? num1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  double? num2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter operator: ");
  String? operator = stdin.readLineSync()!;
  double? result;

  switch(operator){
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if(num2 <= 0) {
        print("Cannot divide by ${num2.toStringAsFixed(0)}");
        return;
      }
      result = num1 / num2;
      break;
    default:
      "Invalid input";
  }
  print(result);


}