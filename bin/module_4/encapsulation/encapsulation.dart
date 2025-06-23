class BankAccount {
  double _balance = 0;

  //getter method
  double get balance => _balance;

  // setter method
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Invalid amount");
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
    } else {
      print("Insufficient Balance");
    }
  }


}


