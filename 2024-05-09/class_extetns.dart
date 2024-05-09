class Animal {
  String name;
  Animal(this.name);
  void speak(){
    print("这个 $name 在说话");
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);
  void bark(){
    print("The $name is barking");
  }

  @override
  void speak() {
    print("这个 $name 在说话, 但是这个被重写了");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);
  void meow(){
    print("The $name is meowing");
  }
}

class Bird extends Animal {
  Bird(String name) : super(name);
  void tweet(){
    print("The $name is tweeting");
  }
}

class Fish extends Animal {
  Fish(String name) : super(name);
  void swim(){
    print("The $name is swimming");
  }
}

class Horse extends Animal {
  Horse(String name) : super(name);
  void neigh(){
    print("The $name is neighing");
  }
}

void main() {

Dog dog = Dog("Rufus");
dog.speak();
dog.bark();

Cat cat = Cat("Whiskers");
cat.speak();
cat.meow();


Bird bird = Bird("Tweety");
bird.speak();
bird.tweet();

Fish fish = Fish("Nemo");
fish.speak();
fish.swim();


Horse horse = Horse("CJ");
horse.speak();
horse.neigh();


}

