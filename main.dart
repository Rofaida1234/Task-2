import 'dart:io';

void main() {
  // 1. For Loop
  print('1. For Loop');

  for (int i = 1; i <= 30; i++) {
    if (i == 25) {
      break;
    }

    if (i % 3 == 0) {
      continue;
    }

    print(i);
  }

  // 2. While Loop
  print('\n2. While Loop');

  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  int counter = 1;

  while (counter <= 12) {
    if (counter == 10) {
      break;
    }

    if (counter == 5) {
      counter++;
      continue;
    }

    print('$number x $counter = ${number * counter}');
    counter++;
  }

  // 3. Do-While Loop
  print('\n3. Do-While Loop');

  int value;

  do {
    stdout.write('Enter a positive number (0 to stop): ');
    value = int.parse(stdin.readLineSync()!);

    if (value == 0) {
      print('Stopped.');
      break;
    }

    if (value > 0) {
      print('You entered a positive number: $value');
    } else {
      print('The number must be positive. Try again.');
    }
  } while (value <= 0);
}
