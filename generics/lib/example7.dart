void main(List<String> args) {
  const tup = Tuple(left: 1, right: 5.1);
  print(tup);
  final swapped = tup.swap();
  print(swapped);
  print(tup.sum);
}

class Tuple<L, R> {
  final L left;
  final R right;

  const Tuple({
    required this.left,
    required this.right,
  });

  @override
  String toString() {
    return 'Tuple, left = $left, right = $right';
  }
}

extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left);
}

extension<L extends num, R extends num> on Tuple<num, num> {
  num get sum => left + right;
}
