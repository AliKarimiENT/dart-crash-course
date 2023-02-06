void main(List<String> args) {
  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();

  // vehicle creates an instance of Car
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() {
    return 'Vehicle of type $runtimeType';
  }
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
