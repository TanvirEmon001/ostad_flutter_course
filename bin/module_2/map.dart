void main(){
  Map<String,String> userIdentity = {
    "name" : "Tanvir",
    "age" : "20",
    "prof" : "Student",
    "nationality" : "Bangladeshi",
    "isMarried" : "False"
  };

  // print the whole map
  print(userIdentity);

  // only one key value pair
  print("User name is: ${userIdentity["name"]}");

  // remove by key
  userIdentity.remove("isMarried");
  print(userIdentity);

  // add
  userIdentity.addAll({"mobile" : "01775097721", "email" : "tanvir@email"});
  print(userIdentity);

  // search result
  print(userIdentity.containsKey("mobile"));// output : true,,, because the key is exist if the key is not exist then it will return false
  print(userIdentity.containsValue("22"));// output : false,, because the key is not exist in the map

  //Map length
  print(userIdentity.length);


  // we can extract only key or only value and make them list
  var mapToList = userIdentity.keys.toList();
  print("This all are list of key of maps:");
  print(mapToList);


  //remove just value by key
  userIdentity.remove("email");
  print(userIdentity);
  // clear all
  userIdentity.clear();
  print(userIdentity);


}