import 'package:classes/example1.dart';

void main(List<String> args) {}

class Person {
  final String firstName;
  final String lastName;
  final String fullName;

  String get getFullName => '$firstName $lastName';

  const Person({
    required this.firstName,
    required this.lastName,
  }) : fullName = '$firstName $lastName';
}
