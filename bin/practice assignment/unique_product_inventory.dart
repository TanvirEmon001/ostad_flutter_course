import 'dart:io';

void main(){
  
  stdout.write("======= Unique Product Inventory =======\n");

  Map<String, int> inventory = {};

  while(true){

    stdout.write("Enter product name (or 'stop' to exit): ");
    String name = stdin.readLineSync()!;
    if(name.toLowerCase().trim() == "stop"){
      break;
    }

    if(inventory.containsKey(name)){
      print("The product is exist please enter unique product");
      continue;
    }

    stdout.write("Enter product quantity: ");
    int? qty = int.parse(stdin.readLineSync()!);

    inventory[name] = qty;


    
  }
  inventory.forEach((productName, qty) {
    if (qty >= 10) {
      print("$productName: $qty");
    }
  });

}