class Person{
  String name;

  num _money = 100;
  Person(this.name);


  num getMoney(){
    return this._money;
  }

  void _wife(){
    print("我是 $name");
  }



}