import 'dart:math';

void main(List<String> args) {
  final cat = Cat(age: 3);
  print(cat.age);
  cat.incrementAge();
  print(cat.age);
}

mixin HasAge {
  abstract int age;
  void incrementAge() => age++;
}

class Cat with HasAge {
  @override
  int age;

  Cat({required this.age});
}
