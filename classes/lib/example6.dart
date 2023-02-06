void main(List<String> args) {}

enum Role { mom, dad, sun, daughter, gradma, grandpa }

class Person {
  final Role role;

  const Person({required this.role});
}

class Mom extends Person {
  Mom() : super(role: Role.mom);
}
