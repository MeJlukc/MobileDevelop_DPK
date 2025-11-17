import 'dart:math';
import 'dart:io';

void main() {
  Random random = Random();
  int number = random.nextInt(100) + 1;

  print("Я загадал число от 1 до 100. Попробуй угадать!");

  while (true) {
    stdout.write("Твой вариант: ");
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == number) {
      print("Верно! Ты угадал!");
      break;
    } else if (guess < number) {
      print("Больше!");
    } else {
      print("Меньше!");
    }
  }
}