import 'dart:io';

void main(){
  stdout.write("Online Voting System\n");

  void candidateName(){
    stdout.write("Select candidate for vote: \n");
    print("1. Tanvir");
    print("2. Emon");
    print("3. Rahim");
    print("4. Taufiqur");
  }

  Map<int,String> candidates = {
    1 : "Tanvir",
    2 : "Emon",
    3 : "Rahim",
    4 : "Taufiqur"
  };


  while(true){
    stdout.write("Enter your Voter ID: ");
    int? voterId = int.parse(stdin.readLineSync()!);
    candidateName();
    stdout.write("Enter Candidate ID: ");
    int? candidateId = int.parse(stdin.readLineSync()!);
  }

}