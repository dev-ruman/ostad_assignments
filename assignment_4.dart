abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print(
        "Deposited: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}");
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print(
        "Withdrawn: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance - amount >= -overdraftLimit) {
      balance -= amount;
      print(
          "Withdrawn: \$${amount.toStringAsFixed(2)}, New Balance: \$${balance.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds");
    }
  }
}

void main() {
  var current = CurrentAccount(1002 - 2002 - 2003, 3000.0, 1000.0);
  current.deposit(500.0);
  current.withdraw(4000.0);

  var savings = SavingsAccount(1001 - 2001 - 30001, 5000.0, 0.05);
  savings.deposit(1000.0);
  savings.withdraw(2000.0);
}
