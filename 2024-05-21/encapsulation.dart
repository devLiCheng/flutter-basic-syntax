class Person {  
  // 私有变量（通过下划线前缀表示约定上的私有）  
  String _name;  
  int _age;  
  
  // 构造函数  
  Person(String name, int age):
    _name = name,
    _age = age;  
  
  // Getter 方法  
  String getName() {  
    return _name;  
  }  
  
  // Setter 方法  
  void setName(String name) {  
    _name = name;  
  }  
  
  // 直接访问公开的属性（在Dart中，没有显式的关键字来声明公开或私有）  
  int getAge() {  
    return _age;  
  }  
  
  void setAge(int age) {  
    _age = age;  
  }  
  
  // 一个方法（操作数据）  
  void greet() {  
    print('Hello, my name is $_name and I am $_age years old.');  
  }  
}  
  
void main() {  
  Person person = Person('Alice', 30);  
  person.greet(); // 访问方法  
  print(person.getName()); // 访问getter  
  person.setAge(31); // 访问setter  
  print(person.getAge()); // 访问getter  
}