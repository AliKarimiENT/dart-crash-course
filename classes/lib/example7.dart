void main(List<String> args) {
  
}

enum VehicleKind {
  car,
  truck,
  motorcycle,
  bicycle,
}

abstract class Vehicle {
  final VehicleKind kind;
  const Vehicle({required this.kind});

  void accelerate() => print('$kind is accelerating');
  void decelerate() => print('$kind is decelerating');
}

class Motorcycle implements Vehicle {
  @override
  void accelerate() {
    print('#Motorcycle is accelerating');
  }

  @override
  void decelerate() {
    print('#Motorcycle is decelerating');
  }

  @override
  VehicleKind get kind => VehicleKind.motorcycle;
}

class Car extends Vehicle {
  Car() : super(kind: VehicleKind.car);
}
