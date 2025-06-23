import 'dart:io';
import 'creat_account.dart';

void main(){
  print("=== TekniumSoft Bank PLC ===");

  CreatAccount creatAccount = CreatAccount();

  print("Open an account ar 'stop' to exit the system");
  while(true){
    stdout.write("Enter your name: ");
    String? accountUserName = stdin.readLineSync()!;

    if (accountUserName.toLowerCase().trim() == "stop") {
      break;
    }
    stdout.write("Enter your mobile number: ");
    int? accountUserMobile = int.parse(stdin.readLineSync()!);

    stdout.write("Enter your email: ");
    String? accountUserEmail = stdin.readLineSync()!;


    if (accountUserName.isNotEmpty && accountUserEmail.isNotEmpty) {
      creatAccount.openAccount(
          name: accountUserName, email: accountUserEmail, mobile: accountUserMobile
      );
      print("Account created successfully done!");
    } else {
      print("Input field can not be empty!");
    }
  }
}