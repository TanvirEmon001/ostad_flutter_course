void main(){
  String input = 'abc';
  String input2 = 'abc';


  try{
    int value = int.parse(input);
    print(value);
  }catch(error){
    print(error);
  }

  print('After end1');
  print('After end2');
  try{
    int value2 = int.parse(input2);
    print(value2);
  }catch(e){
    print(e);
  }

  print('After end3');
  print('After end4');




}