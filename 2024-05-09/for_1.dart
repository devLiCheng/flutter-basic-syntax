void main() {

  var message = StringBuffer('Dart is fun');
  for (int i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var collbacks = [];
  for(int i = 0; i < 5; i++){
    collbacks.add(() => print(i));
  }
  for(var k in collbacks){
    k();
  }

  var collection = [1, 2, 3];
  collection.forEach(print); // 1 2 3

 bool isDone (int time) => time <= 10;
 int t = 0;
  void doSomething () => print('doing something $t');
  while (isDone(t)) {
    doSomething();
    t++;
  }

  do {
    print('do while  $t');
  } while (isDone(t));


  List<int> list = [1, 2, 3, 4, 5];
  print(list.where((element) => element > 3).toList());
  list.where((element) => element > 3).forEach((element) => print('输出List里面大于3的值 $element'));


  // 分支
  print('时间： ${DateTime.now().second}');
  bool isRaining () => DateTime.now().second % 2 == 0; 
  if(isRaining()){
    print("isRaining ${isRaining()}");
  } else {
    print("isRaining ${isRaining()}");
  }


}
