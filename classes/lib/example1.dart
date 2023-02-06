void main(List<String> args) {
  const foo = Person.foo();
  print('${foo.name} : ${foo.age}');

  const bar = Person.bar(25);
  print('${bar.name} : ${bar.age}');
}

class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });

  const Person.foo()
      : name = 'Foo',
        age = 23;

  const Person.bar(this.age) : name = 'Bar';

  const Person.other({
    String? name,
    int? age,
  })  : name = name ?? 'Ali',
        age = age ?? 21;
}
