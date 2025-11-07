import 'bank_account.dart';

class CheckingAccount extends BankAccount {
  static const double overdraftFee = 35.0;

  CheckingAccount(String number, String holder, double balance)
      : super(number, holder, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} in Checking Account.");
  }

  @override
  void withdraw(double amount) {
    balance -= amount;
    if (balance < 0) {
      balance -= overdraftFee;
      print("Overdraft! Charged \$35 fee.");
    }
    print("Withdrew \$${amount.toStringAsFixed(2)} from Checking Account.");
  }
}
