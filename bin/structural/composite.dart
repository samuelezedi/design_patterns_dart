///The composite design pattern is a structural design pattern that allows you to compose objects into tree structures, and treat individual objects and compositions of objects uniformly.
///In Dart, you can implement the composite design pattern by creating an interface for the component and concrete classes for the leaf and composite objects. The composite class should hold a list of components and implement the methods of the component interface by delegating to the child components.

abstract class BankAccount {
  void openAccount(String color);
}

class Savings implements BankAccount {
  @override
  void openAccount(String money) => print('Opening a Savings account with $money');
}

class Corporate implements BankAccount {
  @override
  void openAccount(String money) => print('Opening a Corporate account with $money');
}

class Composite implements BankAccount {
  final List<BankAccount> _bankAccounts = [];

  void add(BankAccount bankAccount) => _bankAccounts.add(bankAccount);

  @override
  void openAccount(String money) {
    for (final account in _bankAccounts) {
      account.openAccount(money);
    }
  }
}


///
///In this example, the Composite class holds a list of BankAccount objects and implements the openAccount method of the BankAccount interface by delegating to the child accounts. The main function creates a Composite object and adds a Savings and a Corporate account to it. When the draw method of the composite is called, it delegates the call to the openAccount method of the child objects.
///By using the composite design pattern, you can create tree structures of objects and treat them uniformly, without having to worry about whether they are individual objects or compositions of objects.
