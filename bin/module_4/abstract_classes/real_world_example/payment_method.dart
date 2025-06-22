abstract class PaymentMethod {
  void pay(double amount);
}

class CreditCard extends PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid $amount using Credit Card.");
  }
}


class MobileBanking extends PaymentMethod{
  @override
  void pay(double amount) {
    print("Paid $amount using Mobile Banking.");
  }

}

void main(){
  CreditCard creditCardPay = CreditCard();
  creditCardPay.pay(5000);

  MobileBanking mobileBankingPay = MobileBanking();
  mobileBankingPay.pay(1580);
}