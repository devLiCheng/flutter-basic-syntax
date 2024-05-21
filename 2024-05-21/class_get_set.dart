import 'dart:ffi';

class Animal{
  String name;
  int _age;
  String _email;
  Animal(this.name, this._age, this._email);

  void speek(){
    print('animal $name');
  }
}


class Dog extends Animal{
  Dog(String name, [int age = 0, String email = '']) : super(name, age, email);

  @override
  void speek(){
    print('dog $name is speek');
  }


  int get age => _age;

  void set age(int newAage){
    if(newAage > 0){
      _age = newAage;
    }else{
      print('age must be greater than 0');
    }
  }

  String get email => _email;


  void set email(String newEmail){
    if(newEmail.contains('@')){
      _email = newEmail;
    }else{
      print('email must contain @');
    }
  }
}


class person{
  String name;
  person(this.name);
  String get getName{
    return name;
  }
}


class Rectangel {
  double width;
  double height;

  double get _width => width;
  double get _height => height;

  void set _width(double newWidth){
    if(newWidth > 0){
      width = newWidth;
    } else {
      print('width must be greater than 0');
    }
  }

  void set _height(double newHeight){
    if(newHeight > 0){
      height = newHeight;
    } else {
      print("height must be greater than 0");
    }
  }

  double get area => _width * _height;

  String get getInfo => "Rectangle: width: $width, height: $height, area: ${area}";
  Rectangel(this.width, this.height);
 
}

void main(){
  final a = Animal('zhangsan', 15, '12@qq.com');
  a.speek();

  print(a._age);

  final d = Dog('lisi', -1, '2@qq.com');
  d.speek();

  print(d._age);
  print(d.age);
  print("d: $d.name $d.age $d.email");


  final p = person('wangwu');
  String name = p.getName;
  print("name: $name");


  final r = Rectangel(3, 4);
  print("area: ${r.area}");
  print(r.getInfo);

}