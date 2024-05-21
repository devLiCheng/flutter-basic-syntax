class MyClass {
  String _privateMember = 'This is a private member';

  void _privateMethod() {
    print('This is a private method');
  }
}

void main() {
  var obj = MyClass();
  print(obj._privateMember); // 错误: _privateMember 是私有的
  obj._privateMethod(); // 错误: _privateMethod 是私有的
}
