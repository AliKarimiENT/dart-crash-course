void main(List<String> args) {
  var address = '123 Main st';
  print(address);
  address = '456 Main St';
  print(address);
  address = address.replaceAll('Main', 'Blun');
  print(address);
}
