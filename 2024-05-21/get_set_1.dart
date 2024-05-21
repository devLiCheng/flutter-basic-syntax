class People {
  late String _name;

  set pName(String value){
    _name = value;
  }

  String get pName{
    return _name;
  }

}


void main(List<String> args){
  String? x;
  x = x ?? 'x';
  print(x);

var p = People();
p.pName = "John";
print(p.pName);

List<int> list = [2,3,4];
list.add(5);
List<int>  l = [1, ...list, 6];
print(l);

Map<String, dynamic> m0 = { 'car': "20215484", 'num': 23 , 'post': '123@q.com'};
Map<String, dynamic> m1 = { 'name': "张三", 'age': 23 , 'email': '123@q.com'};
Map<String, dynamic> m2 = {'name':"lisi", 'age': 1, 'email': '789@qq.com'};
Map<String, dynamic> m3 = {...m0, ...m1, ...m2};
print(m3);

}