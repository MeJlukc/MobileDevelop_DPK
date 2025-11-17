import 'dart:io';

bool isPrime(int num) {
  if (num < 2) return false;

  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  stdout.write("Первое число промежутка: ");
  int from = int.parse(stdin.readLineSync()!);
  stdout.write("Второе число промежутка: ");
  int to = int.parse(stdin.readLineSync()!);

  print("Простые числа от $from до $to:");

  for (int i = from; i <= to; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}