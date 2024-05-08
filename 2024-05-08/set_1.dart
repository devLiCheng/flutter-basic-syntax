void main() {

Set<String> set_1 = Set();

print(set_1);

set_1.add("apple");
set_1.add("banana");
set_1.add("orange");

print(set_1);

set_1.remove("banana");


print(set_1);

set_1.add("apple");

print(set_1);
set_1.add("apple");

print(set_1);


for(var item in set_1) {
  print('${item}');
}

for(int i = 0; i < 5; i++) {
  set_1.add('${i}');
}

print(set_1);

List<int> list = [1,2,3];

String list_str = list.toString();

set_1.add( list_str);

print(set_1);
int len = set_1.length;

print(set_1.skip(1).toSet());

}