///
///The builder design pattern is a creational design pattern that allows you to construct complex objects step by step. It separates the construction of an object from its representation, so that the same construction process can create different representations.

class UserAccount {
  final String userName;
  final String email;
  final String phone;
  final List<String> names;

  // a private constructor
  UserAccount._(this.userName, this.email, this.phone, this.names);

  @override
  String toString() =>
      "UserAccount(username: $userName, email: $email, phone: $phone, names: ${names.join(' ')}";
}

class CreateUserAccount {
  late String _userName;
  late String _email;
  late String _phone;
  List<String> _names = [];

  CreateUserAccount setUserName(String username) {
    _userName = username;
    return this;
  }

  CreateUserAccount setEmail(String email) {
    _email = email;
    return this;
  }

  CreateUserAccount setPhone(String phone) {
    _phone = phone;
    return this;
  }

  CreateUserAccount addName(String name) {
    _names.add(name);
    return this;
  }

  UserAccount create() => UserAccount._(_userName, _email, _phone, _names);
}


/// In this example, the UserAccounnt class is a complex object that has four parts: username, email, phone and names. The UserAccount class has a private constructor, which makes it impossible to create instances of this class directly. Instead, you have to use a CreateUserAccount (Builder) to create instances of UserAccount.
/// The CreateUserAccount class has methods for setting the username, email, phonne and names of a UserAccount object. It also has a create method that creates and returns a new UserAccount object using the values provided by the builder.
/// The main function creates a CreateUserAccounnt object and uses it to set the username, email, phone and name of a UserAccount object. It then calls the create method to create the UserAccount object and print it to the console.
/// By using a builder, you can construct complex objects step by step in a flexible and customizable way. The client code can use the builder to specify the parts of the object it wants to construct, without having to worry about the details of how the object is actually created.