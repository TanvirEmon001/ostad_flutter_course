import 'dart:io';

void main(){
  stdout.write("=== Online Voting System ===\n");

  Map<int,String> candidates = {
    101 : "Tanvir",
    102 : "Emon",
    103 : "Rahim",
    104 : "Taufiqur"
  };

  Map<String, int> voteCount = {
    "Tanvir" : 0,
    "Emon" : 0,
    "Rahim" : 0,
    "Taufiqur" : 0
  };

  Set<int> votedVoterID = {};

  while(true){
    stdout.write("Enter your Voter ID (or 0 to finish voting): ");
    int? voterId = int.parse(stdin.readLineSync()!);

    if(voterId == 0){
      break;
    }

    if(votedVoterID.contains(voterId)){
      print("\nYou have already voted.\n");
      continue;
    }

    stdout.write("Select Candidate for vote:\n");
    candidates.forEach((id, name){
      print("Candidate ID: $id, Candidate: $name");
    });

    stdout.write("Enter Candidate ID: ");
    int? candidateId = int.parse(stdin.readLineSync()!);
    if(!candidates.containsKey(candidateId)){
      print("\nPlease enter valid candidate ID...!\n");
      continue;
    }

    String cndName = candidates[candidateId]!;
    voteCount[cndName] = voteCount[cndName]! + 1;

    votedVoterID.add(voterId);

    print("Your vote for $cndName has been recorded.\n");
  }
  print("\n======= Voting Finished =======");
  print("Vote Results:\n");

  String winnerName = "";
  int highestVotes = 0;

  voteCount.forEach((name,count){
    if(count > highestVotes){
      highestVotes = count;
      winnerName = name;
    }
  });

  print("The winner is $winnerName by $highestVotes votes");
}