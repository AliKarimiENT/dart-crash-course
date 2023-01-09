void main(List<String> args) {
  List<String?>? names;

  names?.add('Lia');
  names?.add(null);

  final String? first = names?.first;
  print(first ?? 'No first element found');

  names = ['Ali', null, null, 'Mahan'];
  print(names);
}
