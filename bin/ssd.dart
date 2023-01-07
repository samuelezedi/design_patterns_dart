import 'package:ssd/ssd.dart' as ssd;

import 'creational/abstract_factory.dart';
import 'creational/builder.dart';
import 'creational/factory_method.dart';
import 'creational/prototype.dart';
import 'creational/singleton.dart';

void main(List<String> arguments) {
  singletonMethod();
}

void singletonMethod() {
  final person = Person();
  final person2 = Person();

  print(person == person2); // prints 'true'

  person.name = "Ezedi";
  print(person2.name);
}

void prototypMethod() {
  final location = Location(1, 1);
  final copy = Location.clone(location);

  print(location == copy); // prints 'false'
  print(location.lat == copy.lat); // prints 'true'
  print(location.lng == copy.lng);
}

void builderMethod() {
  final user = CreateUserAccount()
      .setUserName('ezedi')
      .setEmail('ezedi@mail.com')
      .setPhone('+234806666422')
      .addName('samuel')
      .create();

  print(user);
}

void abstractFactorMethod() {
  final factory = AbilityFactory();
  final bird = factory.createBird(Features.fly);
  final fish = factory.createFish(Features.swim);

  print(bird.feature);
  print(fish.feature);
}

void factoryMethod() {
  // final bird = Animal(AnimalType.bird);
  // final fish = Animal(AnimalType.fish);

  // print(bird.feature);
  // print(fish.feature);
}
