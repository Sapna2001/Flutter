void main() {
  //list
  List<int> first = [1, 2, 3, 4, 5];
  List second = ['aa', 'bb', 'cc'];
  second.add('dd');
  second.add(21);
  print(second);
  for (int i = 0; i < second.length; i++) {
    print(second[i]);
  }
  for (var i in first) {
    print(i);
  }
  //map
  Map sample = {"name": "raghav", "id": 1};
  sample['age'] = 12;
  sample['id'] = 2;
  print(sample);
  print(sample.isNotEmpty);
  sample.forEach((key, value) => {print('key is $key and value is $value')});
  //list and map
  second.add(first.map((e) => (e + 1)).toList());
  print(second);
  first.forEach((key) => print(key));
  // to store map
  // to show for each
}
