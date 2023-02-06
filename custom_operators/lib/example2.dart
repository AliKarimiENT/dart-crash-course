void main(List<String> args) {
  const names = ['Ali', 'Ahmad', 'Reza', 'Rahim', 'Armin'];
  print(names * 2);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield* this;
    }
  }
}
