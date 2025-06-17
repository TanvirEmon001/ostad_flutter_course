import 'dart:io';

void main(){

  for(int i = 9; i >= 0; i --){
    print("${i+1} Hellow");
  }

  stdout.write("\n");

  for(int i = 0; i < 10; i++){
    print("${i+1} Tanvir Emon");
  }

  stdout.write("\n");
  
  print("multiplication table");

  for(int i = 1; i <= 10; i++){
    print("1 x $i = ${1 * i}");
  }

  print("multiplication table");

  for(int i = 1; i <= 10; i++){
    print("2 x $i = ${2 * i}");
  }

  List<String> students = ['Rahim', 'Karim', 'Taufiq', 'Emon', 'Bobo'];

  for(int i = 0; i < students.length; i++){
    print("${students[i]} Welcome to school");
  }

  for(var eachStudent in students){
    print("$eachStudent Welcome to school");
  }

  print("");

  List<int> gpNumbers = [
    017750,
    01789,
    017896,
    017506,
    0179638,
    01742358
  ];
  
  for(var eachNumber in gpNumbers){
    print("To: $eachNumber, আজ! ২ জিবি ৬৫টাকা ৭দিন। ডায়াল *১২১*৫০৩৭# বা https://mygp.li/f9");
  }

  print("");
  var orderList = [
    {'name': 'Apple', 'amount': 150, 'address': 'Dhaka'},
    {'name': 'Mango', 'amount': 100, 'address': 'Dinajpur'},
    {'name': 'Banana', 'amount': 150, 'address': 'Barishal'},
    {'name': 'Orange', 'amount': 300, 'address': 'Rangpur'},
    {'name': 'Guava', 'amount': 250, 'address': 'Rangpur'},
    {'name': 'Jack fruit', 'amount': 150, 'address': 'Rangpur'},
  ];
  int totalOrderAmount = 0;

  for(var order in orderList){
    totalOrderAmount += order["amount"] as int;
    print("Order is confirm for ${order["name"]}, BDT ${order["amount"]}");
  }
  print("Your total to pay: $totalOrderAmount");





}