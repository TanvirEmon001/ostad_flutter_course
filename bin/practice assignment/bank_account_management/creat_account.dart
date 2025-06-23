class CreatAccount {
  final Map<String,dynamic> _accountUser = {};

  openAccount({String name = "Bank User", int mobile = 0177,String email = "bankuser@exampl.com"}){
    _accountUser.addAll({
      "name" : name,
      "mobile" : mobile,
      "email" : email
    });
  }

}