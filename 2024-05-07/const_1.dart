getNum(){
  return  5;
}
void  main(){
  const e = 10;
  // e = 20; error
  print(e);


  final f = getNum();
  const f2 = 30;

  print(f);
  print(f2);
}