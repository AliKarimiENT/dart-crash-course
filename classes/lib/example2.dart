void main(List<String> args) {
  print(Car());
}

class Vehicle {
  final int wheelCount;
  const Vehicle(this.wheelCount);

  @override
  String toString() {
    return '$runtimeType with $wheelCount wheels';
  }
}

class Car extends Vehicle {
  Car() : super(4);
}
