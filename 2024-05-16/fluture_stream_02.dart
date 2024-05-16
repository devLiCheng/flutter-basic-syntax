import 'dart:async';

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (final i in stream) {
    sum += i;
  }
  return sum;
}

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}

void main() async {
  var stream = countStream(10);
  var sum = await sumStream(stream);
  print(sum); // 55

  StreamController<int> controller = StreamController<int>.broadcast();
  Stream<int> broadcastStream = controller.stream;

  StreamSubscription<int> subscription = broadcastStream.listen((event) {
    print(' event $event');
  });

  subscription.onData((data) {
    print('data $data');
  });

  subscription.onError((error) {
    print('error $error');
  });

  controller.add(1);
  controller.add(2);
  controller.add(3);
  print('subscription: $subscription');
  controller.done.then((value) {
    print('done value:  $value');
  });
  controller.stream.listen((event) {
    print('listen event: $event');
  });

  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.add(6);

  broadcastStream.listen((v) {
    print('监听: $v');
  });
  broadcastStream.listen(print); // 输出: 1, 2

  print('sink: $controller.sink');
  print('controller: $controller');
  subscription.cancel();
  print('subscription: $subscription');
  controller.close();
  print('controller: $controller');
}
