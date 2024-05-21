abstract class LoggerInterface {  
  void outName();
}

class Logger  implements LoggerInterface {  
  final String name;  
  
  // 命名构造函数（非Factory）  
  Logger(this.name);  
  
  // Factory构造函数  
  factory Logger.fromName(String name) {  
    // 这里可以根据条件返回不同类型的对象  
    // 例如，如果name以"ERROR"开头，返回一个特殊的ErrorLogger  
    if (name.startsWith('ERROR')) {  
      return ErrorLogger(name);  
    } else {  
      // 否则返回普通的Logger对象  
      return Logger(name);  
    }  
  }
  
  @override
  void outName() {
    print(this.name);
  }

}  
  
// ErrorLogger是Logger的一个子类，用于处理错误日志  
class ErrorLogger extends Logger {  
  ErrorLogger(String name) : super(name);  

  // 错误日志的特定处理逻辑...  
}  
  
void main() {  
  // 使用Factory构造函数创建Logger实例  
  Logger regularLogger = Logger.fromName('INFO');  
  Logger errorLogger = Logger.fromName('ERROR_LOGGING'); // 这将返回ErrorLogger的实例  
  
  // 输出将显示两个不同类型的Logger实例（尽管它们都实现了Logger接口）  
  print(regularLogger.runtimeType); // 输出: Logger  
  print(errorLogger.runtimeType);   // 输出: ErrorLogger  


  regularLogger.outName(); // 输出: INFO  
  errorLogger.outName(); // 输出: ERROR_LOGGING  
}