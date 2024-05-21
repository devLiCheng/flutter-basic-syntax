import 'dart:convert';

class User{
  String name;
  int age;
  String email;
  User(this.name, this.age, this.email);

  User.fromJson(Map<String, dynamic> json) : 
  name = json['name'],
  age = json['age'],
  email = json['email'];

  User.skep(Map<String, dynamic> json) : 
  name = json['name'] + '!',
  age = json['age'] + 1,
  email = json['email'] + '!';

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'email': email
  };
}
void main(){
  final u5 = User('John', 30, '132@qq.com');
  final v = u5.toJson();
  print(v);


  final u6 = User.skep({'name': 'John', 'age': 30, 'email': '132@qq.com'});
  final v2 = u6.toJson();
  print(v2);

  // final jsonString = '{"name":"John","age":30}';
  // final userMap = jsonDecode(jsonString) as Map<String, dynamic>;
  // final user = User.fromJson(userMap);
  // print(user.name);
  // print(user.age);

  // final jsonStringVal = jsonEncode(user);
  // print(jsonStringVal); // {"name":"John","age":30}


  // final u2 = User('zhangsan', 25);
  // print('u2 $u2');
  // final u3 = u2.toJson();
  // print('u3 $u3'); // {"name":"zhangsan","age":25}
  

 List<String> stringList = ['a'];
 List<Object> list = stringList;

 print(stringList);
 print(list);


Comparable<String> stringComparable = "hello";
Comparable<Object> comparable = stringComparable;

print('comparable : `${comparable.compareTo("obj")}`');



}
