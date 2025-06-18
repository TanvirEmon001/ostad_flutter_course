void main(){


  int i = 5;

  while(i <= 15){
    print("Hi this is tanvir emon and my number is $i");
    i++;
  }

  print("");

  List<String> students = ['Rahim', 'Karim', 'Taufiq', 'Emon', 'Bobo', 'Tanvir'];
  int index = 0;
  while(index < students.length){
    print("Welcome!, ${students[index]}");
    index++;
  }
  print("");

  int index2 = 0;
  do{
    print("Welcome!, ${students[index2]} from index 2");
    index2 ++;
  }while(index2 < students.length);

}