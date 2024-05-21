abstract class PhoneFactory{
 void call(){
  print("Calling...");
 }
}

class SamsungFactory extends PhoneFactory{
 void call(){
  print("Calling via Samsung...");
 }
}

class AppleFactory extends PhoneFactory{
 void call(){
  print("Calling via Apple...");
 }
}

void main(){
  //   Phone phone = new Phone();
  // phone.getInfo();

  final samsung = SamsungFactory();
  samsung.call();

  final apple = AppleFactory();
  apple.call();
}



