///
///The factory design pattern is a creational design pattern that provides an interface for creating objects in a super class,
///but allows subclasses to alter the type of objects that will be created.
///In Dart, you can implement the factory design pattern by using a factory constructor.
///A factory constructor is a special kind of constructor that is marked with the factory keyword.
///It does not create a new instance of the class it belongs to, but instead returns an instance of another class.
///Here is an example of how you can use a factory constructor to implement the factory design pattern in Dart:

enum Features { swim, fly }

enum AnimalType { fish, bird }

abstract class Animal {
  String get feature;

  factory Animal(AnimalType object) {
    if (object == AnimalType.bird) {
      return Bird(AnimalType.bird);
    } else if (object == AnimalType.fish) {
      return Fish(AnimalType.fish);
    }
    throw Exception('Cannot determine ability');
  }
}

class Bird implements Animal {
  final AnimalType animalType;

  Bird(this.animalType);

  @override
  String get feature => "This animal can ${Features.fly.name}";
}

class Fish implements Animal {
  final AnimalType animalType;

  Fish(this.animalType);

  @override
  String get feature => "This animal can ${Features.swim.name}";
}


///
///In this example, the Animal class is an abstract class with a factory constructor. The factory constructor takes a type argument and returns an instance of either the Bird or the Fish class, depending on the value of the type argument. The main function creates two Animals using the factory constructor and prints their Features.
///By using a factory constructor, you can create objects of different types without exposing the implementation details of these types to the client code. The client code can simply use the factory constructor to create the objects it needs, without having to worry about the details of how these objects are created.