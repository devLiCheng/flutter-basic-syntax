void main(){
  const list = [1,2,3];
  print(list);

  list.forEach((element) {
    print(element);
  });

 List<String> list_1 = [];
 list_1.add("你好");
 list_1.add("123");
 print(list_1);


 List<int> list_2 = [];
 list_2.add(1);
 list_2.add(2);
 list_2.add(35);
 print(list_2);


  bool empt = list_2.isEmpty;
  print('empt: $empt');

  int len = list_2.length;
  print('len: $len');

  int last = list_2.last;
  print('last: $last');
  print(list_2[2]);


  list_2.clear();
  print(list_2);

  for(int i = 0; i < 10; i++){
    list_2.add(i);
  }

  print('list_2: $list_2');

  print(list_2.contains(5));

  list_2.addAll([4,5,6]);

  print(list_2);

  bool anyRes = list_2.any((element) => element == 4 || element == 5 );
  print('anyRes $anyRes');

  int count = 0;
  list_2.forEach((element) {
    if(element == 5){
      count++;
    }
  });
  print('count: $count');

print(list_2.map((element) => element * 2).toList());

print(list_2.getRange(1, 5));


print("------------------------------");
List<int> list_3 = [1,2,3,4,5];
Iterator<int> it = list_3.iterator;
while(it.moveNext()){
  print(it.current);
}

String itAsList = it.toString();
print(itAsList);




Iterator<int> itTor = [1,2,3,4,5].iterator;
List<int> list_4 = [];

while(itTor.moveNext()){
  list_4.add(itTor.current);
}
print(list_4);



}