void main(List<String> args) {
  
  var aliKarimi = Person(firstName: 'Ali', lastName: 'Karimi');
  print(aliKarimi.fullName);
  print(getFullName(aliKarimi));
}

String getFullName(HasFullName obj) {
  return obj.fullName;
}

mixin HasFirstName {
  String get firstName;
}

mixin HasLastName {
  String get lastName;
}

mixin HasFullName on HasFirstName, HasLastName {
  String get fullName => '$firstName $lastName';
}

class Person with HasFirstName, HasLastName, HasFullName {
  @override
  final String firstName;

  @override
  final String lastName;

  Person({
    required this.firstName,
    required this.lastName,
  });
}
