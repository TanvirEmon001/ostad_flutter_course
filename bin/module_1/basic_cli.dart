import 'dart:io';

void main(){
  stdout.write("Do you love me?\n");
  stdout.write("1.Yes\n2.No\n");
  stdout.write("Choose an option: ");
  String? input = stdin.readLineSync()!;

  if(input.trim() == "1"){
    print("I know you love me so much 🥰🤭");
  }else if(input.trim() == "2"){
    print("Aww that means there is 'No' reason to don't love me! So sweet of you dear...🥰");
  }else {
    print("Invalid input! Please input 1 or 2");
  }
}