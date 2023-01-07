import 'factory_method.dart';

///
///In Dart, you can implement the abstract factory design pattern by defining an abstract class with factory methods for creating the objects. The factory methods are marked with the factory keyword and return objects of concrete classes that implement the desired interface.
///Here is an example of how you can use an abstract factory to implement the abstract factory design pattern in Dart:


abstract class Animal {
  String get feature;
}

class Bird implements Animal {
  final Features features;

  Bird(this.features);

  @override
  String get feature => "This animal can ${Features.fly.name}";
}

class Fish implements Animal {
  final Features features;

  Fish(this.features);

  @override
  String get feature => "This animal can ${Features.swim.name}";
}

abstract class AbilityFactory {
  factory AbilityFactory() {
    return ConcreteAbilityFactory();
  }

  Animal createBird(Features features);
  Animal createFish(Features features);
}


class ConcreteAbilityFactory implements AbilityFactory {
  @override
  Animal createBird(Features features) => Bird(Features.fly);

  @override
  Animal createFish(Features features) => Fish(Features.swim);
}
