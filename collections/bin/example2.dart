import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = {
    'Foo',
    'Bar',
    'Baz',
    'Qif',
  };
  print(names);
  print('---------------------------------');

  final names2 = ['Ali', 'Rex', 'Sad', 'Lol'];
  final setNames = {...names2};
  print(setNames);

  final ages1 = {12, 25, 35, 65};
  final ages2 = {12, 25, 35, 65};
  if (ages1 == ages2) {
    print('Are equal');
  } else {
    print('Are not equal');
  }

  if (SetEquality().equals(ages1, ages2)) {
    print('Are equal');
  } else {
    print('Are not equal');
  }
}
