class Shape {  
  void draw() {  
    print('Drawing a shape...');  
  }  
}  
  
class Circle extends Shape {  
  @override  
  void draw() {  
    print('Drawing a circle...');  
  }  
}  
  
class Rectangle extends Shape {  
  @override  
  void draw() {  
    print('Drawing a rectangle...');  
  }  
}  
  
void drawAllShapes(List<Shape> shapes) {  
  for (Shape shape in shapes) {  
    shape.draw(); // 多态发生在这里  
  }  
}  
  
void main() {  
  List<Shape> shapes = [Circle(), Rectangle()];  
  drawAllShapes(shapes); // 输出: Drawing a circle... 和 Drawing a rectangle...  
}