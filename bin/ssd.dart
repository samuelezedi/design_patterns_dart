import 'package:ssd/ssd.dart' as ssd;

import 'creational/abstract_factory.dart';
import 'creational/builder.dart';
import 'creational/factory_method.dart';

void main(List<String> arguments) {
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
