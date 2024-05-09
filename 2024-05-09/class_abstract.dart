abstract class Shape{
  double area();
  double perimeter();
  //...   
}

class Rectangle  extends Shape{
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return this.width * this.height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}


class Person{
  String name;
  int age;
  Person({ required this.name, required this.age });
  void introduce(){
    print('$name $age');
  }
}


void main(){
    Rectangle rect = Rectangle(5, 10);
    print("Area of Rectangle is: ${rect.area()}");
    print("Perimeter of Rectangle is: ${rect.perimeter()}");  


    Person person = Person(name: "John", age: 25);
    person.introduce();

}