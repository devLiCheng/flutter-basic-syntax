import 'dart:async';

void main () async {

  StreamController<int>  controller = StreamController<int>.broadcast();
  Stream<int> stream = controller.stream;
  Stream<int> stream2 = controller.stream;





  stream.listen((data) {
    print('流： $data');
  });

  stream2.listen((data) {
    print('流2： $data');
  });

  controller.add(1);
  controller.add(2);
  controller.add(3);
  controller.add(4); 

  controller.sink.add(123);


  await Future.delayed(Duration(seconds: 1));

  controller.close();






  Stream<int> streamInt() async* {
    int count = 10;
    for(int k = 1;  k <= count; k++){
      yield k;
    }
  }

  Stream<int> si = streamInt();

  si.listen((s) {
    print('si $s');
  });


  print('si $si');


  StreamController<int> st3 = StreamController<int>();
  Stream<int> stream3 = st3.stream;

  stream3.listen((data) {
    print('stream3 $data');
  });

  st3.add(1);

  print('stream3 $stream3');


  st3.sink.add(456);
  print('stream3 $stream3');

}