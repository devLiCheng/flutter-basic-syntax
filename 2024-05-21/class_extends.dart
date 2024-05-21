class Animal{
  String name;
  int _age;
  String _emal;
  Animal(this.name, this._age, this._emal);
  void speak(){
    print('animal $name');
  }

  void _privateMethod(){
    print('private method $this._age $this._email');
  }
}

class Dog extends Animal{
  Dog(String name, [int xxx = 5, String yyy = '123@qq.com'] ) : super(name, xxx, yyy);

  @override
  void speak(){
    print('god $name');
  }

  @override
  void _privateMethod(){
    print('修改私有方法');
  }
}


void main(){
  final a = Animal('cat', 10, 'qq@qq.com');
  a.speak();
  a._privateMethod();

  final d = Dog('dog', 15);
  d.speak();
  print(d._age);
  print(d._emal);

  final k = Dog('dog2', 2, '7@qq.com');
  print(k._emal);
  k._privateMethod();

}