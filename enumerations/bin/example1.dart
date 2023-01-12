void main(List<String> args) {}

enum Car {
  teslaModelX(
    manufacturer: 'Tesla',
    model: 'Model X',
    year: 2023,
  ),

  teslaModelY(
    manufacturer: 'Tesla',
    model: 'Model Y',
    year: 2023,
  );

  final String manufacturer;
  final String model;
  final int year;
  const Car({
    required this.manufacturer,
    required this.model,
    required this.year,
  });
}
