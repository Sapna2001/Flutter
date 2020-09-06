void main() {
 String statement = manager(q:4,item:'sugar',u:'kg');
  print(statement);
  String s = '''some thing
  some thing '''; //multiline string
    print(s.trim());
}

String manager({int q,String u,String item}){
  return('$q $u $item');
}
