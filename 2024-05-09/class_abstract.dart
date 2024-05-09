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
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}


void main(){
    Rectangle rect = Rectangle(5, 10);
    print("Area of Rectangle is: ${rect.area()}");
    print("Perimeter of Rectangle is: ${rect.perimeter()}");  
}