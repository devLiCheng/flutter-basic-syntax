Future<int> sumStream(Stream<int> stream) async {
  var sum = 0;
  await for (var value in stream) {
    sum += value;
  }
  return sum;
}


void main() async {
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  stream.listen((value) => print('value $value'));
  print(stream);
  var future = sumStream(stream);
  future.then((value) => print(value));

  // Output: 15
}