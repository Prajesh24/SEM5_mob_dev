import 'bank_account.dart';
import 'interest_bearing.dart';

class Bank {
  final List<BankAccount> _accounts = [];

  void addAccount(BankAccount account) {
    _accounts.add(account);
    print("Account added successfully.");
  }

  BankAccount? findAccount(String number) {
    return _accounts.firstWhere((a) => a.accountNumber == number, orElse: () => null as BankAccount);
  }

  void transfer(String from, String to, double amount) {
    var sender = findAccount(from);
    var receiver = findAccount(to);

    if (sender == null || receiver == null) {
      print("Error: One or both accounts not found!");
      return;
    }

    sender.withdraw(amount);
    receiver.deposit(amount);
    print("Transferred \$${amount.toStringAsFixed(2)} from ${sender.accountHolder} to ${receiver.accountHolder}.");
  }

  void applyMonthlyInterest() {
    for (var account in _accounts) {
      if (account is InterestBearing) {
        account.applyInterest();
      }
    }
  }

  void generateReport() {
    print("\n===== BANK ACCOUNT REPORT =====");
    for (var account in _accounts) {
      account.displayInfo();
    }
  }
}
