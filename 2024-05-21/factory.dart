abstract class Phone {  
  void call();  
}  
  
class Android implements Phone {  
  void call() {  
    print("Calling from Android");  
  }  
}  
  
class Ios implements Phone {  
  void call() {  
    print("Calling from Ios");  
  }  
}  
  
class PhoneFactory {  
  static Phone? getPhone(String phoneType) {  
    if (phoneType == "Android") {  
      return Android();  
    } else if (phoneType == "Ios") {  
      return Ios();  
    } else {  
      return null;  
    }  
  }  
}  
  
void main() {  
  test(); // 确保调用了 test 方法  
}  
  
// 测试  
void test() {  
  Phone? phone = PhoneFactory.getPhone("Android");  
  if (phone != null) {  
    phone.call();  
  }  
    
  phone = PhoneFactory.getPhone("Ios");  
  if (phone != null) {  
    phone.call();  
  }  
}