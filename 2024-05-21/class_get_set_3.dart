
class Point{
  final num x;
  final num y;
  var origin;
  Point(this.x, this.y): origin = {x: x, y: y}

  Point.formJson(Map json): 
    x  = json['x'],
    y = json['y'];

  Point.formXML(Map xml): this(xml['x'], xml['y']);

}

void main(){
  var p = Point(10, 20);
  print([p.x, p.y]);
}