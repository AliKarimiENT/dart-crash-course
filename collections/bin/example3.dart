void main(List<String> args) {
  final iterable = Iterable.generate(
    20,
    (index) => getName(index),
  );
  print(iterable);

  for (var item in iterable.take(2)) {
    print(item);
  }
}

String getName(int i) {
  return 'John #$i';
}
