import 'encapsulation.dart';

void main(){
  BankAccount myBankAccount = BankAccount();
  myBankAccount.deposit(1000);
  myBankAccount.deposit(500);
  myBankAccount.deposit(3000);

  myBankAccount.withdraw(500);
  myBankAccount.withdraw(4000);


  print("Balance: ${myBankAccount.balance}");
}