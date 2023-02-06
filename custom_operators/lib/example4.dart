void main(List<String> args) {
  // 'Ali Karimi' - 'Ali' = 'Karimi'
  print('Ali Karimi' - 'Karimi');
}

extension Remove on String {
  String operator -(String value) {
    return replaceAll(value, '');
  }
}
