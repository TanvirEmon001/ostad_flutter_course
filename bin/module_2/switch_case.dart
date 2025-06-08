import 'dart:io';

void main(){
  stdout.write("Seven days routine schedule:\n");
  String? day = stdin.readLineSync()!;

  switch(day){
    case "sun":
      print("Flutter practice day");
      break;
    case "mon" || "tue" || "wed" || "thu":
      print("Go to institute");
      break;
    case "fri" || "sat":
      print("Flutter Practice");
      break;
  }
}