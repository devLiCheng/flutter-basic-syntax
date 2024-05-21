class Person{
  late String name;
  
  Person(this.name);

  String get nameGetter {
    return name;
  }

  void set SetName(String n){
    name = n;
  }

}


void main(){
  final Person p = Person("张三");
  print(p.name);
  p.SetName = "Machil";
  print(p.nameGetter);
  print(p.name);
}