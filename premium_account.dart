import 'bank_account.dart';
import 'interest_bearing.dart';

class PremiumAccount extends BankAccount implements InterestBearing {
  static const double minBalance = 10000.0;
  static const double interestRate = 0.05;

  PremiumAccount(String number, String holder, double balance)
      : super(number, holder, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} in Premium Account.");
  }

  @override
  void withdraw(double amount) {
    if (balance - amount < minBalance) {
      print("Warning: Minimum balance of \$10,000 required!");
    } else {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Premium Account.");
    }
  }

  @override
  void applyInterest() {
    double interest = balance * interestRate;
    balance += interest;
    print("Interest of \$${interest.toStringAsFixed(2)} applied to Premium Account.");
  }
}
