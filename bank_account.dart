abstract class BankAccount {
  // Private fields (Encapsulation)
  String _accountNumber;
  String _accountHolder;
  double _balance;

  // Constructor
  BankAccount(this._accountNumber, this._accountHolder, this._balance);

  // Getters and Setters (Encapsulation)
  String get accountNumber => _accountNumber;
  String get accountHolder => _accountHolder;
  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print("Error: Balance cannot be negative!");
    } else {
      _balance = value;
    }
  }

  // Abstract methods (Abstraction)
  void deposit(double amount);
  void withdraw(double amount);

  // Method to display account info
  void displayInfo() {
    print("Account No: $_accountNumber | Holder: $_accountHolder | Balance: \$${_balance.toStringAsFixed(2)}");
  }

  void applyInterest() {}
}
