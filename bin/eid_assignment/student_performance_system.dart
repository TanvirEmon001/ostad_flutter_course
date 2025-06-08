import 'dart:io';

void main(){
  stdout.write("#####----Student Performance System----#####\n");
  List<Map<String,dynamic>> studentMapList = [];
  while(true){
    stdout.write("Enter student data or type 'stop' for finish the system\n");
    stdout.write("Enter student name: ");
    String? stdName = stdin.readLineSync()!;
    if (stdName.toLowerCase() == 'stop') {
      break;
    }

    stdout.write("Mark of subject 1: ");
    int? subject1 = int.parse(stdin.readLineSync()!);

    stdout.write("Mark of subject 2: ");
    int? subject2 = int.parse(stdin.readLineSync()!);

    stdout.write("Mark of subject 3: ");
    int? subject3 = int.parse(stdin.readLineSync()!);

    stdout.write("Mark of subject 4: ");
    int? subject4 = int.parse(stdin.readLineSync()!);

    stdout.write("Mark of subject 5: ");
    int? subject5 = int.parse(stdin.readLineSync()!);

    String? grade;
    void gradePointAverage(double avrg){
      if(avrg <= 100 && avrg >75){
        grade = "A";
      }else if(avrg <= 75 && avrg >50){
        grade = "B";
      }else if(avrg <= 50 && avrg >25){
        grade = "C";
      }else if(avrg <= 25){
        grade = "F";
      }else{
        grade = "Unknown";
      }
      print("$stdName, Your average mark is: ${avrg.toStringAsFixed(2)} and GPA is : $grade");
    }




    int sum = subject1 + subject2 + subject3 +subject4 + subject5;
    double avrg = sum / 5;
    gradePointAverage(avrg);

    studentMapList.addAll([{
      "name" : stdName,
      "grade" : grade
    }]);


  }

  stdout.write("All A grade student list:\n");

  for (var student in studentMapList) {
    if(student["grade"] == "A"){
      print("Student Name: ${student["name"]}, Student GPA: ${student["grade"]}");
    }
  }

}
