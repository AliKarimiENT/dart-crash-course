void main(List<String> args) {
  print(doTypesMatch('Ali', 'Reza'));
  print(doTypesMatch(123, 'Reza'));
}

bool doTypesMatch<L, R>(L, R) {
  return L == R;
}
