///
///The bridge design pattern is a structural design pattern that allows you to decouple an abstraction from its implementation, so that the two can vary independently.
///In Dart, you can implement the bridge design pattern by creating an interface for the abstraction and a separate class hierarchy for the implementation. The abstraction can then hold a reference to an object in the implementation class hierarchy.
///

abstract class Renderer {
  void renderCircle(double radius);
  void renderSquare(double side);
}

class VectorRenderer implements Renderer {
  @override
  void renderCircle(double radius) =>
      print('Drawing a circle with radius $radius');

  @override
  void renderSquare(double side) => print('Drawing a square with side $side');
}

class RasterRenderer implements Renderer {
  @override
  void renderCircle(double radius) =>
      print('Drawing a circle with radius $radius to a bitmap');

  @override
  void renderSquare(double side) =>
      print('Drawing a square with side $side to a bitmap');
}

abstract class Shape {
  final Renderer _renderer;

  Shape(this._renderer);

  void draw();
  void resize(double factor);
}

class Circle extends Shape {
  double _radius;

  Circle(Renderer renderer, this._radius) : super(renderer);

  @override
  void draw() => _renderer.renderCircle(_radius);

  @override
  void resize(double factor) => _radius *= factor;
}

class Square extends Shape {
  double _side;

  Square(Renderer renderer, this._side) : super(renderer);

  @override
  void draw() => _renderer.renderSquare(_side);

  @override
  void resize(double factor) => _side *= factor;
}

