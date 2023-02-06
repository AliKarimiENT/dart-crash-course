void main(List<String> args) {
  int? value = 20;
  int? value2 = 50;
  final result = value + value2;
  print(add(20, 39));
}

int add([int? a, int? b]) {
  return (a + b)!;
}

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    var shadowThis = this;
    if (shadowThis == null && other == null) {
      return 0 as T;
    } else if (other == null) {
      return shadowThis;
    } else if (shadowThis == null) {
      return other;
    } else {
      return shadowThis + other as T;
    }
  }
}
