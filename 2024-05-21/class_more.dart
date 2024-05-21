// 1. 显式构造函数
// 显式构造函数使用 constructor 关键字定义。它们允许您明确指定要初始化的实例变量以及它们的初始化值。
class Person{
  String name;
  int age;
  Person(this.name, this.age);
}


// 2. 默认构造函数
// 如果类没有显式定义构造函数，Dart 会自动创建一个默认构造函数。默认构造函数负责初始化类的所有实例变量。对于大多数类型，默认值通常为 null 或 0
class Point {
  late int x;
  late int y;
}


// 3. 命名构造函数
// 命名构造函数允许您使用不同的名称来调用构造函数。这对于具有多个构造函数且具有相似参数列表的类很有用
// class PersonInfo {
//   String name;
//   int age;


  // 命名构造函数 1
  // PersonInfo.fromName(String n, int a) {
  //   name = n;
  //   age = a;
  // }

  // 命名构造函数 2
  // PersonInfo.fromAge(String nick, int ag) {
  //   this.name = nick;
  //   this.age = ag;
  // }

// }

// 4. 工厂构造函数
// 工厂构造函数使用 factory 关键字定义。它们与其他类型的构造函数不同，因为它们不直接创建新对象。相反，它们可以返回现有对象的引用或创建新对象的逻辑。

// 工厂构造函数通常用于执行一些复杂的操作，例如从外部数据源加载数据或创建具有复杂状态的对象。



void main(List<String> args) {
  Person person1 = Person('Alice', 30);
  Person person2 = Person('Bob', 25);


  Point point1 = Point();
  print(point1.x); // 输出：null
  print(point1.y); // 输出：null



}