
void main() {
  Map m = {};
  print(m);

  // List<int> number = [1,2,3];
  // List<double> = numbers.map((num) => num.toDouble()).toList();
  // print(numbers);

  // 2.
  List<int> numbers = [1,2,3];
  print(numbers is List<int>); 
  Iterable<double> numbers2 = numbers.map((num) => num.toDouble()).toList();
  print(numbers2 is Iterable<double>);
  print(numbers2); // [1.0, 2.0, 3.0]

  List<double> list_2 = numbers.map((num) => num.toDouble()).toList();
  print(list_2 is List<double>);
  print(list_2);

  
  print("----------------------------------");
  Iterator<int> iterator_list = [1,5,8].iterator;
  while(iterator_list.moveNext()){
    print(iterator_list.current);
    print(iterator_list.runtimeType);
    print(iterator_list.toString());
  }

  
}