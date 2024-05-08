// 构造函数 在Dart中，构造函数是与类一起定义的特殊函数，用于初始化类的实例。

class Person {
  late String name;
  late int age;

  Person(String name, int age){
    this.age = age;
    this.name = name;
  }

  Person.withDefaults({String name = 'Unknown', int age = 18}){
    this.age = age;
    this.name = name;
  }

  @override
  String toString(){
    return 'Person(name: $name, age: $age)';
  }
  void sayHello(){
    print('Hello, my name is $name and I am $age years old.');
  }
}



// 高阶函数
List<int> printLengths(List<String> sts, int Function(String s) f){
  List<int> list = [];
  for(String s in sts){
    list.add(f(s));
  }
  return list;
}


void main() {

  int add(int a, int b){
    return a + b;
  }

  int b = add(1, 2);
  print(b);

  int pow(int a, int b){
    return a * add(1, b);
  }

  int rest = pow(3, 2);
  print(rest);



// Lambda表达式（闭包）
List<int> mapList(List<int> list, int Function(int) f){
  return list.map((int x) => f(x)).toList();
}

List<int> list = mapList([1,2,3], (int i) => i *2);
print(list);



List<String> filtering(List<int> list, String Function(String) f){
  return list.map((e) => f(e.toString())).toList();
}

List<String> list2 = filtering([5,8,9], (String s) => s + '！');

print(list2);

print("-----------------------------------------");

Person p1 = Person('John', 30);
print('p1 $p1');
p1.sayHello();
Person p2 = Person.withDefaults();
print('p2 $p2');
p2.sayHello();



int? getStr(){
  int k = 5;
  return k;
}

print(getStr());


List<int> res = printLengths(["hello", "world!"], (String s) => s.length);
print('res: $res');




}