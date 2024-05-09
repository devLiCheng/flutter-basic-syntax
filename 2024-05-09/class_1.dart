
double initialX = 1.5;
class Point {
  // OK, can access declarations that do not depend on `this`:
  double? x = initialX;

  // ERROR, can't access `this` in non-`late` initializer:
  double? y;

  // OK, can access `this` in `late` initializer:
  late double? z = this.x;

  // OK, `this.fieldName` is a parameter declaration, not an expression:
  Point(this.x, this.y);
}


class Person{
  final String _name;
  Person(this._name);
  String greet(String who) => 'Hello, $who! I am $_name.';
}

class Impostor implements Person {
  String get _name => '';

  String greet(String who) => 'Hi, $who! Nice to meet you!';

}

String greetBob(Person person) => person.greet('Bob');


class Queue{
  double x, y;
  Queue(this.x, this.y);
  static const initialCapacity = 10;

  static double calculateDistance(Queue a, Queue b){
    return (a.x - b.x) * (a.x - b.x) + (a.y - b.y) * (a.y - b.y);
  }
  
  
}


void main(){
  Point p = Point(2.0, 3.0);
  print(p.x);
  print(p.y);

  print(greetBob(Person("Kathy")));
  print(greetBob(Impostor()));

  print(Queue.initialCapacity);


  var q1 = Queue(1.0, 2.0);
  var q2 = Queue(3.0, 4.0);
  double distance = Queue.calculateDistance(q1, q2);  
  print(distance);
}