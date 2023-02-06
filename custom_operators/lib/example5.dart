void main(List<String> args) {
  var result = [1, 2, 3, 4, 5, 8] - [1, 5, 9];
  print(result);

  print(['Ali', 'Alireza', 'Ahmad'] - ['Reza', 'Moji', 'Ali']);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) {
    return where((element) => !other.contains(element));
  }
}
