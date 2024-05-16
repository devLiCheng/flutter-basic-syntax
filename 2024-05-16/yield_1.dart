import 'dart:convert';

void main() async {


Stream<String> readFileLinesAsync() async* {
 await Future.delayed(Duration(seconds: 1));
 yield "第一行";
 await Future.delayed(Duration(seconds: 1));
 yield "第二行";
 await Future.delayed(Duration(seconds: 1));  
 yield "第三行";
 await Future.delayed(Duration(seconds: 1));
 yield "第四行";
 await Future.delayed(Duration(seconds: 1));
 yield "第五行";
 await Future.delayed(Duration(seconds: 1));
 yield "第六行";
 await Future.delayed(Duration(seconds: 1));
 yield "第七行";
 await Future.delayed(Duration(seconds: 1));
 yield "第八行";
 await Future.delayed(Duration(seconds: 1));
 yield "第九行";
 await Future.delayed(Duration(seconds: 1));
 yield "第十行";
 await Future.delayed(Duration(seconds: 1));
 yield "第十一行";
 await Future.delayed(Duration(seconds: 1));
 yield "第十二行";
 await Future.delayed(Duration(seconds: 1));
}

Stream<String> lines = readFileLinesAsync();

await for(var line in lines){
  print('line $line');
}

}