void main(List<String> args) {
  String? getFullNameOptional() {
    return null;
  }

  String getFullNameRequired() {
    return 'Foo Bar';
  }

  final fullName = getFullNameOptional() ?? getFullNameRequired();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();

  final otherName = getFullNameRequired();
  otherName.describe();
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print('This object is null');
    } else {
      print('$runtimeType: $this');
    }
  }
}
