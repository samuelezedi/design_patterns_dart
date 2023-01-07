import 'dart:math';

///
///The adapter design pattern is a structural design pattern that allows you to adapt one interface to another, so that classes that have incompatible interfaces can work together.
///In Dart, you can implement the adapter design pattern by creating a class that implements the target interface and delegates the calls to the adapted object.
///

abstract class Shape {
  double get area;
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

class Square {
  final double side;

  Square(this.side);

  double get area => side * side;
}

class SquareToCircleAdapter implements Shape {
  final Square _square;

  SquareToCircleAdapter(this._square);

  @override
  double get area => pi * _square.side * _square.side / 4;
}

