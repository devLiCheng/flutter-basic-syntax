import 'dart:async';
import 'dart:math';

void main () async {

// 第一种创建普通流的方式
Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5]).asBroadcastStream();    

// 第二种创建普通流的方式 

// Stream<int> s2 = StreamTransformer.fromHandlers(handleData: (Stream<int> data, EventSink sink) => sink.add(data)).bind(Stream.fromIterable([1, 2, 3, 4, 5]));

Stream<int> s2 = StreamTransformer<int, int>.fromHandlers(
  handleData: (int data, EventSink<int> sink) => sink.add(data),
).bind(Stream.fromIterable([1, 2, 3, 4, 5]));








}
