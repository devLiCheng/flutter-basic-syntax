
// 定义一个抽象类，作为接口
abstract class Animal {
  // 抽象方法，没有具体实现
  void speak();
}

// 实现Animal接口的类
class Dog extends Animal {
  @override
  void speak() {
    print('Woof!');
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print('Meow!');
  }
}

void main() {
  Animal myDog = Dog(); // 创建Dog类型的实例，但类型是Animal
  Animal myCat = Cat(); // 创建Cat类型的实例，但类型是Animal

  myDog.speak(); // 输出: Woof!
  myCat.speak(); // 输出: Meow!
}

