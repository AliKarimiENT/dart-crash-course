void main(List<String> args) {
  const person = Person(height: 180.5);
  const dog = Dog(height: 20);

  print(person.height);
  print(dog.height);
}

mixin HasHeight<H extends num> {
  H get height;
}

typedef HasIntHeight = HasHeight<int>;
typedef HasDoubleHeight = HasHeight<double>;

class Person with HasDoubleHeight {
  @override
  final double height;
  const Person({required this.height});
}

class Dog with HasIntHeight {
  @override
  final int height;

  const Dog({required this.height});
}
