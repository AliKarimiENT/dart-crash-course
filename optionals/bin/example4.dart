void main(List<String> args) {
  String? name;
  print(name?.length);

  String? city;
  print(city ?? 'Tehran');

  print(name ?? city ?? 'All are null');
}
