class MyClass {
  static int count = 0;
  MyClass() {
    count++;
  }
  static void reset() {
    count = 0;
  } 
}

void main(){
  MyClass obj1 = MyClass();
  print(MyClass.count); // 1
  print(obj1.hashCode);
  // MyClass.reset();
  MyClass obj2 = MyClass();
  print(MyClass.count);
}