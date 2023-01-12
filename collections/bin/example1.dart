void main(List<String> args) {
  final numbers = [1, 2, 3];
  final sum = numbers.fold(
    0,
    (
      previousValue,
      thisValue,
    ) {
      var additionValue = previousValue + thisValue;
      // print(additionValue);
      return additionValue;
    },
  );
  print(sum);

  const names = ['Ali', 'Reza', 'Ramin', 'Javad'];
  final result = names.fold('', (previousValue, thisName) {
    if (names.indexOf(thisName) == 0) {
      return previousValue + thisName;
    } else {
      return '$previousValue $thisName';
    }
  });
  print(result);
}
