void main(List<String> args) {
  final num nb = num.parse(args[0]);
  assert(nb >= 80, 'The score must be bigger or equal to 80');
  print('You Passed');
}
