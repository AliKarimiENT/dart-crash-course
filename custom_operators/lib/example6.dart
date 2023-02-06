void main(List<String> args) {
  print(
    {'name': 'John', 'age': 21} + {'city': 'Qom'},
  );

  print(
    {'name': 'John', 'age': 21, 'city': 'Qom'} - {'city': 'Qom'},
  );

  print(
    {'name': 'John', 'age': 21, 'city': 'Qom'} * 3,
  );
}

extension MapOperation<K, V> on Map<K, V> {
  Map<K, V> operator +(Map<K, V> other) => {
        ...this,
        ...other,
      };
  Map<K, V> operator -(Map<K, V> other) {
    // if we want to copy all key and values of a map
    // use this : {...this}
    return {...this}..removeWhere(
        (key, value) => other.containsKey(key) && other[key] == value,
      );
  }

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (var i = 0; i < times; i++) {
      yield this;
    }
  }
}
