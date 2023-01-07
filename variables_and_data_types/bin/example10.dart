void main(List<String> args) {
  late final myValue = 10;
  print(myValue);
  late final yourValue =
      getValue(); // when we use late, the dart uderstands that when we used your value
  // initialized on the first use
  print('we are here');
  print(yourValue);
}

int getValue() {
  print('get value called');
  return 10;
}
