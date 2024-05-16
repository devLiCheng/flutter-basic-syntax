import 'dart:async';
import 'dart:math';

void main() async {
  StreamController<int> s = StreamController<int>.broadcast();

  s.stream.listen((data) {
    print('监听1: $data');
  });

  s.stream.listen((data) {
    print('监听2: $data');
  });

  s.sink.add(1);
  s.sink.add(2);
}
