void main(){
  Runes input = new Runes('\u{1F600}');
  print(new String.fromCharCodes(input));
  print(input.runtimeType);
  print(input.length);


  var a = #abc;
  print(a);
  print(a.runtimeType);

  var b = new Symbol('hello');
  print(b);


  print(#abc == new Symbol('abc'));

  dynamic foo = "bar";
  print(foo);
  foo =  456;
  print(foo);


}