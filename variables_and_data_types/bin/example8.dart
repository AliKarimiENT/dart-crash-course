void main(List<String> args) {
  final yourList = [1, 2, 3];

  /// invalid operation with final keyword
  /// yourList = [3, 4, 5];

  /// valid operation
  yourList.add(4);
  print(yourList);

  // modification of list items is valid
  yourList[0] = 25;
  print(yourList);
}
