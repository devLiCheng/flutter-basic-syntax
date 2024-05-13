class Rect{
  int width;
  int height;
  Rect(this.width, this.height);
  get area => width * height;
  set area(int value) {
    width = (value / height) as int; 
  }
}

void main() {
  Rect r = new Rect(10,4);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
  print(r.area); // 40
  r.area = 20;
  print(r.width); // 5  
  print(r.height); // 2 

}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         