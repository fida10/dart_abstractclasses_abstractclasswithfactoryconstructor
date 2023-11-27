/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/abstractclasses_abstractclasswithfactoryconstructor_base.dart';

/*
Question:

Create an abstract class Shape with a factory constructor Shape.create 
that decides which concrete subclass to instantiate based on a string parameter.

Implement two subclasses, Circle and Square, 
each with a method draw.

The factory constructor in Shape should 
instantiate Circle when the parameter is 'circle' 
and Square when it's 'square'.
 */

abstract class Shape {
  Shape();

  factory Shape.create(String shapeToDraw) {
    return shapeToDraw == 'circle'
        ? Circle()
        : shapeToDraw == 'square'
            ? Square()
            : Square(); //returning square as default
  } //would be better with if else

  String draw();
}

class Circle extends Shape {
  @override
  String draw() {
    return 'Drawing Circle';
  }
}

class Square extends Shape {
  @override
  String draw() {
    return 'Drawing Square';
  }
}
