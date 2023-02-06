void main(List<String> args) {
  final person = Person();
  person.jump(speed: 10);
  person.walk(speed: 4);
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({required double speed}) {
    this.speed = speed;
    print('$runtimeType is jumping at the speed of $speed');
  }
}

mixin CanWalk on HasSpeed {
  void walk({required double speed}) {
    this.speed = speed;
    print('$runtimeType is walking at the speed of $speed');
  }
}

///* when we want to use mixins for creating a class, we must use 'with' keyword
class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;

  Person() : speed = 0.0;
}
