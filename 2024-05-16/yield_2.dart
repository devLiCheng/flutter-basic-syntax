import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
final file = File('test.txt');
 
 // 整体读出来
// final contents = await file.readAsString();
// print(contents);  

try {
  Stream<String> lines = file.openRead().transform(utf8.decoder).transform(LineSplitter());
  await for(var line in lines){
    // 逐行读出来
    await Future.delayed(Duration(seconds: 1));
    print('$line');
  }
} catch (e) {
  print('error: $e');
}

}