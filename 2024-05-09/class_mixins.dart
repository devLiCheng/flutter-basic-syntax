class Loggable {
  void log(String msg){
    print('${DateTime.now().toString()} Log: $msg');
  }
}

mixin Printable{
  void printMessage(String msg){
    print('XXX: $msg');
  }
}

class Person with Loggable, Printable {
  String name;
  Person(this.name);

  void sayHello(){
    log('Hello, I am $name');
  }
}



void main(){
  Person person = Person('John');
  person.sayHello(); // Output: 2022-05-09 10:25:25.285 Log: Hello, I am John
}