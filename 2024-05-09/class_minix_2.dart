mixin Logger{
  void log(String message){
    print('Log: $message');
  }

  void performActionWithLogging(String accountNumber, Function action){
    log('Performing action $accountNumber ');
    action();
    // Perform the action
  }
}

class MinixAccount with Logger{
  void performAction(){
    performActionWithLogging('data processing', () => {
      print("处理结束了")
    });
  }
}

void main(){
  MinixAccount m = MinixAccount();
  m.performAction();
  // Output: Log: Performing action 1234567890
  // Output: 处理结束了

}