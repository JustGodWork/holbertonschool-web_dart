import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    stderr.writeln('Please provide a number');
    exit(1);
  }

  final int number = int.parse(args[0]);

  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}
