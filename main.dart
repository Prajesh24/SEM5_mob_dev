import 'bank.dart';
import 'saving_account.dart';
import 'checking_account.dart';
import 'premium_account.dart';
import 'student_account.dart';

void main() {
  var bank = Bank();

  var acc1 = SavingsAccount("001", "Alice", 1000);
  var acc2 = CheckingAccount("002", "Bob", 200);
  var acc3 = PremiumAccount("003", "Charlie", 20000);
  var acc4 = StudentAccount("004", "David", 3000);

  bank.addAccount(acc1);
  bank.addAccount(acc2);
  bank.addAccount(acc3);
  bank.addAccount(acc4);

  acc1.withdraw(200);
  acc2.withdraw(300);
  acc3.deposit(5000);
  acc4.deposit(2500);

  bank.transfer("001", "002", 100);
  bank.applyMonthlyInterest();
  bank.generateReport();
}
