class Singleton {
  static final Singleton _instance = Singleton._internal();

  Singleton._internal();

  factory Singleton() => _instance;

  void doSomething() {
    print("Doing something");
  }

}

void main() {
  var Singleton1 = Singleton();
  Singleton1.doSomething();

  var Singleton2 = Singleton();
  Singleton2.doSomething();

  print(Singleton1 == Singleton2); // true
  print(identical(Singleton1, Singleton2)); // true
  print(Singleton1 is Singleton); // true
  print(Singleton2 is Singleton); // true
  print(Singleton1.runtimeType == Singleton2.runtimeType); // true
  print(Singleton1.toString() == Singleton2.toString()); // true
  print(Singleton1.hashCode == Singleton2.hashCode); // true
  print(Singleton1.runtimeType == Singleton2.runtimeType); // true
  print(Singleton1.toString() == Singleton2.toString()); // true
}