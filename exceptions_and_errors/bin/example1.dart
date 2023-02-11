void main(List<String> args) {
  try {
    print('Dog aged 11 is going to run');
    Dog(age: 11, isTired: false).run();
  } catch (e) {
    print(e);
  }
}

class Throws<T> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class DogIsTooOldException implements Exception {
  const DogIsTooOldException();
}

class DogIsTiredException implements Exception {
  const DogIsTiredException();
}

class Animal {
  final int age;

  Animal({required this.age});

  // anotate the Error Exception
  @Throws([UnimplementedError])
  void run() => throw UnimplementedError();
}

class Dog extends Animal {
  final bool isTired;
  Dog({
    required super.age,
    required this.isTired,
  });

  @Throws([DogIsTiredException, DogIsTooOldException])
  @override
  void run() {
    if (age > 10) {
      throw DogIsTooOldException();
    } else if (isTired) {
      throw DogIsTiredException();
    } else {
      print('Dog is running');
    }
  }
}
