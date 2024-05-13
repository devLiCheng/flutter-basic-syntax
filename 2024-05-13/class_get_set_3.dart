class Area{
  final  P = 3.14;
  num r;
  Area(this.r);

  get count {
    return this.r * P; 
  }

  set setR(num val){
    this.r = val;
  }

}
void main() {
  var a = new Area(6);
  print(a.count);

  a.setR = 4;
  print(a.count);
}