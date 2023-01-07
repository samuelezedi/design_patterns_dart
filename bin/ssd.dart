import 'package:ssd/ssd.dart' as ssd;

import 'creational/abstract_factory.dart';
import 'creational/builder.dart';
import 'creational/factory_method.dart';
import 'creational/prototype.dart';
import 'creational/singleton.dart';
import 'structural/adapter.dart';
import 'structural/bridge.dart' as bridge;
import 'structural/composite.dart';
import 'structural/decorator.dart';
import 'structural/facade.dart';
import 'structural/flightweight.dart';
import 'structural/proxy.dart';

void main(List<String> arguments) {
  proxyMethod();
}

void proxyMethod() {
  final bankAccount = BankAccountProxy(BankAccountImp(100), 'secret');
  bankAccount.deposit(50);
  print(bankAccount.balance); // prints '150'
  print(bankAccount.withdraw);
}

void flightweigthMethod() {
  final factory = FeatureFactory();

  final a = factory.getFeature('a');
  final b = factory.getFeature('b');
  final c = factory.getFeature('c');
  final a2 = factory.getFeature('a');

  print(a == a2); // prints 'true'
  print(a == b); // prints 'false'
  print(a == c); // prints 'false'
}

void facadeMethod() {
  final page = PageFacade();
  print(page.generatePage());
}

void decoratorMethod() {
  final textView = ScrollDecorator(SimpleTextView());
  textView.draw(); // prints:
  //   Drawing a simple text view
  //   Adding scroll bars to the text view
}

void compositeMethod() {
  final composite = Composite();
  composite.add(Savings());
  composite.add(Corporate());

  composite.openAccount('\$10,000');
  // prints:
  //   Drawing a circle with color red
  //   Drawing a square with color red
}

void bridgeMethod() {
  final circle = bridge.Circle(bridge.VectorRenderer(), 5);
  circle.draw(); // prints 'Drawing a circle with radius 5'
  circle.resize(2);
  circle.draw(); // prints 'Drawing a circle with radius 10'

  final square = bridge.Square(bridge.RasterRenderer(), 5);
  square.draw(); // prints 'Drawing a square with side 5 to a bitmap'
  square.resize(2);
  square.draw(); // prints 'Drawing a square with side 10 to a bitmap'
}

void adapterMethod() {
  final square = Square(2);
  final adapter = SquareToCircleAdapter(square);

  print(adapter.area); // prints '2.5132741228718345'
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
