
import "dart:convert";

class Person{
   String name;
   int age;

//  Person(this.name, this.age);

factory Person.formJson(String json){
    Map<String, dynamic> data = jsonDecode(json);
    String name = data['name'] as String;
    int age = data['age'] as int;
    return Person(name, age);
  }
}

void main(){
  String strJson = "{name: 'zhagnsan', age: 12}";
  Person person = Person.formJson(strJson);
  print(person.name);
  print(person.age);  
}