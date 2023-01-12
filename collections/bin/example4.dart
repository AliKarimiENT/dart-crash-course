import 'package:collection/collection.dart';

void main(List<String> args) {
  final names = ['John', 'Jane'];
  names.add('Jack');
  final readOnlyList = UnmodifiableListView(names);
  print(readOnlyList);
}
