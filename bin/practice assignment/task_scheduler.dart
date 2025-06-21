import 'dart:io';

void main(){
  print("=== Task Scheduler ===");

  List<Map<String, dynamic>> tasksMap = [];
  String? message = "Message";

  Map<int,String> priorityLevel = {
    1 : "High",
    2 : "Medium",
    3 : "Low"
  };

  Map<int,String> menuListMap = {
    1: "Add Task",
    2: "Mark Task",
    3: "Show Task"
  };

  void addTask(){

    stdout.write("Enter Task Name: ");
    String taskName = stdin.readLineSync()!;


    print("Tasks Priority");
    priorityLevel.forEach((level,value){
      print("$level: $value");
    });
    stdout.write("Select priority level: ");
    int? priorityNum = int.parse(stdin.readLineSync()!);

    if(!priorityLevel.containsKey(priorityNum)){
      print("Enter valid priority level!!");
    }
    if(priorityLevel.containsKey(priorityNum)){
      tasksMap.addAll([{
        "name" : taskName,
        "priority" : priorityLevel[priorityNum],
        "isDone" : false
      }]);
    }

    print("Task added successfully!\n");

  }//addTask Function

  void showTask() {
    List<Map<String, dynamic>> incompleteTasks = tasksMap
        .where((task) => task["isDone"] == false)
        .toList();

    if (incompleteTasks.isEmpty) {
      print("\n$message\n");
      return;
    }

    // Custom priority order for sorting
    Map<String, int> priorityOrder = {
      "High": 1,
      "Medium": 2,
      "Low": 3,
    };

    // Sort tasks by priority
    incompleteTasks.sort((a, b) =>
        priorityOrder[a["priority"]]!.compareTo(priorityOrder[b["priority"]]!));

    print("\nIncomplete Tasks Sorted by Priority:");
    for (var task in incompleteTasks) {
      print("Task: ${task["name"]}, Priority: ${task["priority"]}");
    }
  }// show tasks


  void markAsCompleteTasks() {
    List<Map<String, dynamic>> incompleteTasks = tasksMap
        .where((task) => task["isDone"] == false)
        .toList();

    if (incompleteTasks.isEmpty) {
      print("No incomplete tasks to mark.");
      return;
    }

    print("\nIncomplete Tasks:");
    for (int i = 0; i < incompleteTasks.length; i++) {
      print("${i + 1}. ${incompleteTasks[i]["name"]} (Priority: ${incompleteTasks[i]["priority"]})");
    }

    stdout.write("Enter the task number to mark as complete: ");
    int selected = int.parse(stdin.readLineSync()!);

    if (selected < 1 || selected > incompleteTasks.length) {
      print("Invalid selection!");
      return;
    }

    Map<String, dynamic> selectedTask = incompleteTasks[selected - 1];

    for (var task in tasksMap) {
      if (task["name"] == selectedTask["name"] &&
          task["priority"] == selectedTask["priority"] &&
          task["isDone"] == false) {
        task["isDone"] = true;
        print("Task '${task["name"]}' marked as complete!\n");
        break;
      }
    }
  }//markTask
  
  while(true){


    print("Select menu or type '0' to exit program: ");
    menuListMap.forEach((id,menu){
      print("$id: $menu");
    });

    stdout.write("Select menu: ");
    int? selectManue = int.parse(stdin.readLineSync()!);

    if(selectManue == 0){
      break;
    }

    switch(selectManue){
      case 1:
        addTask();
        break;
      case 2:
        if(tasksMap.isEmpty) {
          message = "No Task to complete";
        } else {
          markAsCompleteTasks();
        }
        break;
      case 3:
        if(tasksMap.isEmpty) {
          message = "No Task to show";
        } else {
          showTask();
        }
        break;
      default:
        continue;
    }



  }//while loop ends here









}