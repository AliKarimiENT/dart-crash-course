void main(List<String> args) {
  addToDictionaryRight();
  for (var name in getNames()) {
    print(name);
  }
}

Iterable<String> getNames() sync* {
  print('Producing Bob');
  yield 'Bob';
  print('Producing Ali');
  yield 'Ali';
  print('Producing James');
  yield 'James';
  print('Producing Hode');
  yield 'Hode';

  print('Producing template names');
  yield* templateNames();
}

Iterable<String> templateNames() sync* {
  print('Producing "Bob"');
  yield 'Foo';
  print('Producing "Ali"');
  yield 'Karimi';
  print('Producing "James"');
  yield 'Rodriges';
  print('Producing "Hode"');
  yield 'Noda';
}

void addToDictionaryRight() {
  const info = {
    'name': 'Ali Karimi',
    'age': 21,
    'height': 1.5,
  };
  final result = {...info}..addAll({'Weight': 80});
  print(result);
}
