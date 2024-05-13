// 在 Dart 中，get 和 set 是用于定义类的属性的 getter 和 setter 方法的特殊语法。这些方法允许你控制对对象属性的访问和修改，并提供额外的逻辑或验证。

class Animal {
  String _name;
  int age;

  Animal(this._name, this.age);

  String getName (){
    return _name;
  }

  void _run(){
    print('$_name is running');
  }

  execRun(){
    this._run();
  }

}
void main() {

Animal dog = new Animal('小狗', 20);
print(dog.getName()); // 小狗
dog.execRun(); // 小狗 is running

}