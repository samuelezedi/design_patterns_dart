///
///The decorator design pattern is a structural design pattern that allows you to add new behavior to existing objects dynamically, by wrapping them in an object of a decorator class.
///In Dart, you can implement the decorator design pattern by creating an abstract class that implements the same interface as the object being decorated, and has a field for the object being decorated. The decorator class should override the methods of the interface and add new behavior by delegating to the object being decorated.
///

abstract class TextView {
  void draw();
}

class SimpleTextView implements TextView {
  @override
  void draw() => print('Drawing a simple text view');
}

class ScrollDecorator implements TextView {
  final TextView _textView;

  ScrollDecorator(this._textView);

  @override
  void draw() {
    _textView.draw();
    print('Adding scroll bars to the text view');
  }
}



///
///In this example, the ScrollDecorator class implements the same TextView interface as the object being decorated, and has a field for the object being decorated. The draw method of the decorator overrides the draw method of the TextView interface and adds new behavior by delegating to the object being decorated and then printing a message.
///The main function creates a ScrollDecorator object that wraps a SimpleTextView object. When the draw method of the decorator is called, it delegates the call to the draw method of the SimpleTextView object and then adds the new behavior of printing a message.