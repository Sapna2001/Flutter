int calculation({String firstName, String secondName}) {
  // firstName = "Sapna"
  // secondName = "Sapna"
  int finalPercentage;
  List<String> firstList = firstName.toLowerCase().split('');
  List<String> secondList = secondName.toLowerCase().split('');
  //firstName+loves+secondName
  List<String> finalList = firstList + "loves".split('')+secondList;
  // finalList = [s, a, p, n, a, l, o, v, e, s, s, a, p, n, a]
  // count letter frequency and store it in a map
  var letterMap = new Map();
  finalList.forEach((f){
    letterMap.containsKey(f) ? letterMap[f]++ : letterMap[f] = 1;
  });
  // letterMap = {s: 3, a: 4, p: 2, n: 2, l: 1, o: 1, v: 1, e: 1}
  List magicCode = letterMap.values.toList();
  // magicCode = [3, 4, 2, 2, 1, 1, 1, 1]
  List score;
  while(magicCode.length>2){
    score = _calculate(magicCode);
    magicCode = score;
  }
  finalPercentage  = magicCode[0] * 10 + magicCode[1];
  return finalPercentage;
}

List _calculate(List magicCode){
  int countSum;
  List score = new List();
  do{
    countSum=magicCode.first + magicCode.last;
    if(countSum>9)
      countSum-=9;
    score.add(countSum);
    magicCode.removeLast();
    magicCode.removeAt(0);
  } while(magicCode.length >= 2);
  if (magicCode.isNotEmpty) {
    score.add(magicCode.first);
  }
  return score;
}