import 'bank_account.dart';
import 'interest_bearing.dart';

class SavingsAccount extends BankAccount implements InterestBearing {
  int _withdrawals = 0;
  static const int maxWithdrawals = 3;
  static const double minBalance = 500.0;
  static const double interestRate = 0.02;

  SavingsAccount(String number, String holder, double balance)
      : super(number, holder, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} in Savings Account.");
  }

  @override
  void withdraw(double amount) {
    if (_withdrawals >= maxWithdrawals) {
      print("Error: Withdrawal limit reached for this month!");
      return;
    }
    if (balance - amount < minBalance) {
      print("Error: Cannot go below minimum balance of \$500!");
    } else {
      balance -= amount;
      _withdrawals++;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Savings Account.");
    }
  }

  @override
  void applyInterest() {
    double interest = balance * interestRate;
    balance += interest;
    print("Interest of \$${interest.toStringAsFixed(2)} applied to Savings Account.");
  }
}
