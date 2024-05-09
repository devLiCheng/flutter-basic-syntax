
class Person {
  String name;
  int age;
  double height;
  double weight;

  Person(this.name, this.age, this.height, this.weight);

  String greets(){
    return "Hello, my name is $name and I am $age years old.";
  }

  double calculateBMI(){
    double bmi = weight / (height * height);
    return bmi;
  }

}
void main() {
  Person person1 = Person("John", 25, 1.75, 70);
  print(person1.greets());
  print(person1.calculateBMI());

  // Create a new instance of the Person class
  Person person2 = Person("Alice", 30, 1.65, 65);
  print(person2.greets());
  print(person2.calculateBMI());

}