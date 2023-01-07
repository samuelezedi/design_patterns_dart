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


///
///In this example, the Singleton class has a private constructor and a static field named _instance that holds the single instance of the class. The class also has a factory constructor that returns the _instance field. This ensures that there is only one instance of the class, and that the instance is created when it is first accessed.
///The main function creates two Singleton objects using the factory constructor. Since the factory constructor always returns the same instance, the two objects are equal and have the same value.