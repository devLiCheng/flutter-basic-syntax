class Animal {  
  void eat() {  
    print('The animal eats.');  
  }  
}  
  
class Dog extends Animal {  
  void bark() {  
    print('The dog barks.');  
  }  
  
  // 重写父类方法  
  @override  
  void eat() {  
    print('The dog eats dog food.');  
  }  
}  
  
void main() {  
  Dog myDog = Dog();  
  myDog.eat(); // 输出: The dog eats dog food.  
  myDog.bark(); // 输出: The dog barks.  
}