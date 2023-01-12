void main(List<String> args) {
  print(TeslaCars.values);
  print([...TeslaCars.values]..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelY(weightInKg: 2.3),
  modelX(weightInKg: 3.5),
  modelZ(weightInKg: 4.2),
  modelW(weightInKg: 1.5);

  final double weightInKg;
  const TeslaCars({required this.weightInKg});

  @override
  int compareTo(TeslaCars other) => weightInKg.compareTo(other.weightInKg);
}
