class Rectangel{
    double length;
    double width;
    double get area => length * width;
    
    double get perimeter => 2 * (length + width);

    Rectangel(this.length, this.width);
}

void main() {
    Rectangel r = Rectangel(5, 10);
    print(r.area); // Output: 50.0
    print(r.length); // Output: 5.0
    print(r.width); // Output: 10.0 
    r.length = 15;
    print(r.area); // Output: 150.0
    r.width = 20;
    print(r.area); // Output: 300.0
    print(r.length); // Output: 15.0
    print(r.width); // Output: 20.0 
}

