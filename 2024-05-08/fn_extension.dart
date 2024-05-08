
extension MyString on String {
  bool isPalindrome() {
    return this == this.split('').reversed.join('');
  }
}

// 测试
void test(String str) {
  if (str.isPalindrome()) {
    print('$str is a palindrome------------------------');
  } else {
    print('$str is not a palindrome++++++++++++++++++++++++++++++++');
  }
}

extension isLenwithOne on String {
  bool isLenOne(){
    return this.length == 1;
  }
}


void main(){
  test('racecar');
  test('hello');
  test('');
  test('a');
  test('ab');
  test('abc');
  test('abcba');
  test('abcbaa');
  test('abcbaabc');

print("------------------------");
  String str = "racecar";
  print(str.split(''));
  print(str.split('').reversed);
  print(str.split('').reversed.join(''));

  print("---------------------");
  String str1 = "a";
  String str2 = "ab";
  print(str1.isLenOne());
  print(str2.isLenOne());
}