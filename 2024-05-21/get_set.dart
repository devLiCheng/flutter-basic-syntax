// class Person{
//    late String name;
//   //  String get area => name +  '!';
//   //  String get Pname => name;
//   //  void set Pname(String newName){
//   //   name = newName;
//   //  }

// }

// void main(){
//   final Person p = Person();
//   // p.Pname = '张三';
//   print(p.name);
  
//   // print(p.name);

// }


class People{
  late String _name;
  set pName(String value){
    _name = value;
  }
  String get pName{
    return "my name is ${_name}";
  }
}


main(){
  var p = People();
  p.pName = "张三";
  print(p.pName);
}