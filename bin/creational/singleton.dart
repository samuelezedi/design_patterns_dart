///
///The singleton design pattern is a creational design pattern that ensures that a class has only one instance, and provides a global access point to that instance.
///In Dart, you can implement the singleton design pattern by using a private constructor and a static field to hold the single instance of the class. You can then provide a static method for accessing the instance.

class Person {
  static final Person _instance = Person._privateConstructor();

  factory Person() {
    return _instance;
  }

  Person._privateConstructor();

  String name = "Samuel";
}
