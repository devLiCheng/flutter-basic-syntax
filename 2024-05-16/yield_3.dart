
import 'dart:io';
void main(List<String> arguments) async{
int count = 10;
for(int i=0; i<count; i++){
  String fileName = "dart_${i.toString().padLeft(2, '0')}.dart";
  File file = File(fileName);
  String content =  '''
     void main() {
      print('Hello World $fileName');
    } 
     ''';
  try{
    await file.writeAsString(content);
  } on IOException{
    print("Error creating file $fileName");
  }
}

}