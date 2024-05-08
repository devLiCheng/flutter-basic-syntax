import 'dart:ffi';

class Animal{}

class Dog extends Animal{
}

void main(){
  dynamic c;
  c = 10;
  c = "Hello World";
  print(c);

  final d = "hello dart";
  print(d);

  Object name = "bob";
  print(name);

  String str = "string";
  String? s;
  bool t  = s == null;
  var tt = s == null;
  var ttt = true;
  const tttt = true;
  print(""" 这是str 的值 \n $str  $s   $t  $tt  $ttt $tttt  """);
  

int? lineCount = 5;
int n =  0;
print("""  $lineCount  $n """);


int? count;
changeCount(){
  count = 10 as int?;
}
 print(""" ------>\\\ $count """);
changeCount();
if(count == null){
 print(""" ------> $count """);
}
 print(""" ------||| $count """);

 late String des;
 des = "hello dart";
 print(des);

 var str1 = "hello dart----->";
 str1 = "world";
 print(""" $str1 """);


 const Object i = 3;
 const list = [i as int];
 const map = { if(i is int) i: "int" };
 const set = { if (list is List<int>) ...list};
 print(""" $list $map $set """);



const Object k = "stringvalue";
const list1 = [k as String];
const map1 = { if(k is String) k: "string" };
const set1 = { if( list1  is List<String> ) ...list1};

print(""" $list1 $map1 $set1 """);


print("---------------------------------------------------------1");
Animal myAnimal = Dog();
Dog myDog = myAnimal as Dog;
print(myDog is Dog);
print(myDog is Animal);

print("---------------------------------------------------------2");
Animal myAnimal1 = Dog();
Dog myDog1 = myAnimal1 as Dog;
print(myDog1 is Dog);
print(myDog1 is Animal);

print("---------------------------------------------------------3");
Animal myAnimal2 = Dog();
Dog myDog2 = myAnimal2 as Dog;
print(myDog2 is Dog);
print(myDog2 is Animal);
print(myDog is Animal);



int a = 5;
try {
  double c = a as double;
  print("c: $c");
} catch(e){
  print("Error: $e");
}
double b = a.toDouble();
print(""" $a $b """);

} 