void main(){
  Set<String> mySet = {'Tanvir Emon', 'Rohim','Rahat','Sultan','Protiva','bappi','nishat'};
  Set<String> setNames = {'Tanvir Emon', 'Rohim','Rahat','Sami', 'Bushra', 'Sanzida'};
  print(mySet);

  mySet.add('Saha');
  print(mySet);

  mySet.remove('Saha');
  print(mySet);

  print(mySet.elementAt(0));

  print(mySet.intersection(setNames));
  print(mySet.union(setNames));
}