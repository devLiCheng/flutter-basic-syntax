import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchGithubData() async {
  try {
    final String url = "https://api.github.com/users/flutter/repos";
    // 发送get请求
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      // 解析json数据
      final List<dynamic> data = jsonDecode(response.body);
      print(data);
      // 打印数据
    } else {
      print("Failed to load data");
    }

  } on http.ClientException catch (e) {
     print('Caught an exception: $e');  
  }
}

Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 2));
  return "Data fetched successfully";
}




void main() async {
  final String data = await fetchData();
  print(data);

  await fetchGithubData();

  int getInt(int i, int j){
    return i + j;
  }

  int fetchInt(int g){
    return g;
  }

  getInt(fetchInt(8),  fetchInt(5));

}

