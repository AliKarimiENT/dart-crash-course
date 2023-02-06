void main(List<String> args) {
  Human().run();
}

class Has2Feet {
  const Has2Feet();
}

//* if we want to use CanRun, we must create a subclass of Has2Feet to be able to use CanRun
mixin CanRun on Has2Feet {
  void run() => print('$runtimeType is running');
}

class Human extends Has2Feet with CanRun {
  @override
  void run() => print('$runtimeType is running');
}

class HasNoFeet {
  const HasNoFeet();
}

class Fish extends HasNoFeet {
  const Fish();
}
