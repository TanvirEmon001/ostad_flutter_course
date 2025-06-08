import 'dart:io';

void main() {
  print("======= Online Voting System =======");

  // 1️⃣ Candidate list with ID and names
  Map<int, String> candidates = {
    1: "Tanvir",
    2: "Emon",
    3: "Rahim",
    4: "Taufiqur",
  };

  // 2️⃣ Store votes: Candidate name -> number of votes
  Map<String, int> voteCounts = {
    "Tanvir": 0,
    "Emon": 0,
    "Rahim": 0,
    "Taufiqur": 0,
  };

  // 3️⃣ Store voter IDs to prevent duplicate voting
  Set<int> votedVoterIds = {};

  while (true) {
    stdout.write("\nEnter your Voter ID (or 0 to finish voting): ");
    int voterId = int.parse(stdin.readLineSync()!);

    // 4️⃣ Allow exiting
    if (voterId == 0) {
      break;
    }

    // 5️⃣ Check if voter already voted
    if (votedVoterIds.contains(voterId)) {
      print("⚠️ You have already voted. Duplicate voting is not allowed.");
      continue;
    }

    // 6️⃣ Show candidate options
    print("\nSelect a candidate to vote for:");
    candidates.forEach((id, name) {
      print("$id. $name");
    });

    stdout.write("Enter Candidate ID: ");
    int candidateId = int.parse(stdin.readLineSync()!);

    // 7️⃣ Validate candidate choice
    if (!candidates.containsKey(candidateId)) {
      print("❌ Invalid Candidate ID. Please try again.");
      continue;
    }

    // 8️⃣ Count vote
    String candidateName = candidates[candidateId]!;
    voteCounts[candidateName] = voteCounts[candidateName]! + 1;

    // 9️⃣ Mark this voter ID as voted
    votedVoterIds.add(voterId);

    print("✅ Your vote for '$candidateName' has been recorded.");
  }

  // 🔟 Show Final Results
  print("\n======= Voting Finished =======");
  print("Vote Results:");

  voteCounts.forEach((name, count) {
    print("$name: $count votes");
  });

  // 🔍 Determine the winner
  String winner = voteCounts.entries.reduce((a, b) => a.value > b.value ? a : b).key;

  print("\n🏆 Winner: $winner");
}
