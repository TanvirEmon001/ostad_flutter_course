import 'dart:io';

void main(){
  stdout.write("presenting my daily life routine with if else\n");

  stdout.write("What time is it now?\n");
  double? inputTime = double.parse(stdin.readLineSync()!);


  if(inputTime >= 4.30 && inputTime <= 5.30){

    print("It's time to pray Fazar Salah");
    if(inputTime >= 4.30 && inputTime <5.11){
      print("You have enough time to pray Fazar prayer");
    } else{
      print("You have just few minutes left. Please hurry up!");
    }
    
  } else if(inputTime <= 9.00 && inputTime >= 5.31){

    print("Sleeping time. So have a nice dream!");
    if(inputTime == 9.00) {
      print("But Alarm is ringing..... wake up.\nsleeping time is over");
    }

  } else if(inputTime <= 10.00 && inputTime >= 9.01){
    print("Brushing teeth & then breakfast");
  } else if(inputTime <= 12.30 && inputTime >= 10.01){
    print("Learn spoken English");
  } else if(inputTime <= 14.00 && inputTime >= 12.31){
    print("Shower time and then Zuhor Prayer + Lunch");
  } else if(inputTime <= 15.30 && inputTime >= 14.01){
    print("Power nap");
  } else if(inputTime <= 19.00 && inputTime >= 15.31){
    print("Tuition-1 + Asar + Tuition-2 + Maghrib");
  } else if(inputTime <= 20.00 && inputTime >= 19.01){
    print("Practice programming");
  } else if(inputTime <= 21.00 && inputTime >= 20.01){
    print("Eshar prayer");
  } else if(inputTime <= 23.59 && inputTime >= 22.00){
    print("Live class or practice programming");
  } else{
    print("Sleeping time");
  }



}