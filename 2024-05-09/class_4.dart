
abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
}

class Dog extends Animal {
  Dog(String name): super(name);

  @override
  void makeSound() {
    print('$name says Woof!');
  }
}

class Cat extends Animal {
  Cat(String name): super(name);

  @override
  void makeSound(){
    print('$name say miao');
  }
}

Animal createAnimal(String name, String type){
  if(type == 'dog'){
    return Dog(name);
  } else{
    return Cat(name);
  }
}


void main() {
   Animal an = createAnimal('John', 'dog');
  an.makeSound();

  Animal ani = createAnimal('Mary', 'Cat');
  ani.makeSound();

}