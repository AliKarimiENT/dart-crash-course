void main(List<String> args) {
  String? name;

  void changeName() {
    name = 'Ali';
  }

  changeName();
  if (name?.contains('Ali') ?? false) {
    print('Name is $name');
  }
}
