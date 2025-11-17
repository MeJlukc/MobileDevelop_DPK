import 'dart:io';

void main() {
  while (true) {
    print("Работа с большими числами:");
    print("1 — сложение");
    print("2 — вычитание");
    print("3 — умножение");
    print("4 — деление");
    print("0 — выход");

    stdout.write("Выберите действие: ");
    var request = stdin.readLineSync()!;

    if (request == "0") break;

    stdout.write("Введите первое число: ");
    BigInt a = BigInt.parse(stdin.readLineSync()!);
    stdout.write("Введите второе число: ");
    BigInt b = BigInt.parse(stdin.readLineSync()!);

    switch (request) {
      case "1": print("Результат: ${a + b}"); break;
      case "2": print("Результат: ${a - b}"); break;
      case "3": print("Результат: ${a * b}"); break;
      case "4": print("Результат: ${a ~/ b}"); break;
    }
  }
}