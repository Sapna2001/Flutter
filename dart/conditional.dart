void main() {
  switch (10) {
    case 1:
      print('1');
      break;
    case 2:
      print('2');
      break;
    case 3:
      print('3');
      break;
    case 4:
      print('4');
      break;
    case 5:
      print('5');
      break;
    default:
      print('Invalid no');
      break;
  }
  int a = 5;
  if (a != -5)
    print("True");
  else
    print("False");

  bool val = (a == 5 || a < 5) ? true : false;
  print(val);
}
