// class Person {
//   String name;
//   int age;
//   Person(this.name, this.age) {
//     this.name = name;
//     this.age = age;
//   }
//   Person.fromMap(Map<String, dynamic> data) {  
//       name = data['name'];  
//       age = data['age'];  
//     }  
// }

class Person{
  final String name;
  final int age;
  const Person(this.name, this.age);
  String getInfo() {
    return "$name is $age years old";
  }
}
void main() {

  var w = [Person('John', 25), const Person('John', 25)];
  print(w[0].getInfo());
  print(w[1].getInfo());
  print(w[0] == w[1]); // true

}