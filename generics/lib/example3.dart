void main(List<String> args) {
  const momAndDad = {
    'mom': Person('Mom'),
    'dad': Person('Dad'),
  };

  const sisterAndBrother = {
    'sister': Person('Sister'),
    'brother': Person('Brother'),
  };

  const fishes = {
    'fishy': Fish(),
    'fushy': Fish(),
  };

  final allValues = [
    momAndDad,
    sisterAndBrother,
    fishes,
  ];

  describe(allValues);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;
void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  final String name;
  const Person(this.name);
  @override
  void breathe() {
    print('$name is breathing...');
  }
}

class Fish with CanBreathe {
  const Fish();
  @override
  void breathe() {
    print('Fish is breathing...');
  }
}
