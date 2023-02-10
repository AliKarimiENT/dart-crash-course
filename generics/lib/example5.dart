void main(List<String> args) {
  const JSON<int> ages = {
    'Ali': 21,
    'Reza': 35,
    'Gholam': 60,
  };
  print(ages);
}

typedef JSON<T> = Map<String, T>;
