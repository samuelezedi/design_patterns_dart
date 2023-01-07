## Software Design Patterns and how to implement them in your Dart / Flutter code

### What is Software Design Patterns?
Software design patterns are typical solutions to common problems in software design, each pattern is like a blueprint that you can customize to solve a particular design problem in your code.

There are about 23 design patterns but grouped into 3:
1. Creational
2. Structural
3. Behavioural

#### Creational:
Creational design pattern provide different object creation mechnisms, that could increase flexibility or reuse of existing code.
Below are examples of creational design patterns.
##### Factory methods: 
this method provides an interface for creating objects in superclass but allows subclasses to alter the type of object that will be created. [See Dart Implementation](https://github.com/samuelezedi/design_patterns_dart/blob/main/bin/creational/factory_method.dart)
##### Abstract factory method: 
this method lets you produce families of related objects without specifying their concrete class. [See Dart Implementation](https://github.com/samuelezedi/design_patterns_dart/blob/main/bin/creational/abstract_factory.dart)
##### Builder: 
let’s you construct objects step by step, this pattern allows you produce different types of representation of an object, using the same contruction code. [See Builder Implementation](https://github.com/samuelezedi/design_patterns_dart/blob/main/bin/creational/builder.dart)
##### Prototype: 
this method lets you copy existing objects without making your code dependent on their class. [See Dart Implementation](https://github.com/samuelezedi/design_patterns_dart/blob/main/bin/creational/prototype.dart)
##### Singleton: 
this lets you ensure that a class has only one instance, while providing a global access point to this instance. [See Dart Implementation](https://github.com/samuelezedi/design_patterns_dart/blob/main/bin/creational/singleton.dart)
