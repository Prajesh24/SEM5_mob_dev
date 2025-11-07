import 'bank_account.dart';

class StudentAccount extends BankAccount {
  static const double maxBalance = 5000.0;

  StudentAccount(String number, String holder, double balance)
      : super(number, holder, balance);

  @override
  void deposit(double amount) {
    if (balance + amount > maxBalance) {
      print("Error: Cannot exceed maximum balance of \$5,000!");
    } else {
      balance += amount;
      print("Deposited \$${amount.toStringAsFixed(2)} in Student Account.");
    }
  }

  @override
  void withdraw(double amount) {
    if (balance - amount < 0) {
      print("Error: Insufficient funds!");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Student Account.");
    }
  }
}
