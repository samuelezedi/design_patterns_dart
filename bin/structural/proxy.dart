///
///The proxy design pattern is a structural design pattern that allows you to create a surrogate or placeholder object that controls access to another object, which may be remote, expensive to create, or in need of protection.
///In Dart, you can implement the proxy design pattern by creating a class that implements the same interface as the object being proxied, and has a field for the object being proxied. The proxy class should override the methods of the interface and add the desired behavior by delegating to the object being proxied.
///

abstract class BankAccount {
  void deposit(int amount);
  bool withdraw(int amount);
  int get balance;
}

class BankAccountImp implements BankAccount {
  int _balance;

  BankAccountImp(this._balance);

  @override
  void deposit(int amount) => _balance += amount;

  @override
  bool withdraw(int amount) {
    if (_balance >= amount) {
      _balance -= amount;
      return true;
    } else {
      return false;
    }
  }

  @override
  int get balance => _balance;
}

class BankAccountProxy implements BankAccount {
  final BankAccount _bankAccount;
  final String _password;

  BankAccountProxy(this._bankAccount, this._password);

  @override
  void deposit(int amount) => _bankAccount.deposit(amount);

  @override
  bool withdraw(int amount) {
    if (_password == 'secret') {
      return _bankAccount.withdraw(amount);
    } else {
      return false;
    }
  }

  @override
  int get balance => _bankAccount.balance;
}
