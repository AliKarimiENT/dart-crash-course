void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue.runtimeType);
  print(doubleValue);

  final int intValue = eitherIntOrDouble();
  print(intValue.runtimeType);
  print(intValue);

  // reccieve exception
  final String ex = eitherIntOrDouble();
}

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not supported');
  }
}
