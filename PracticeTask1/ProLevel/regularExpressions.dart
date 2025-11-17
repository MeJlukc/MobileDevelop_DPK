import 'dart:io';

void main() {
  while (true) {
    print("Регулярные выражения:");
    print("1 — поиск по regex");
    print("2 — замена");
    print("3 — проверка соответствия");
    print("0 — выход");

    stdout.write(">> ");
    var request = stdin.readLineSync()!;

    if (request == "0") break;

    stdout.write("Введите текст: ");
    String text = stdin.readLineSync()!;
    stdout.write("Регулярка: ");
    RegExp re = RegExp(stdin.readLineSync()!);

    switch (request) {
      case "1":
        print("Найдено: ${re.allMatches(text).map((m) => m.group(0)).toList()}");
        break;

      case "2":
        stdout.write("На что заменить: ");
        String rep = stdin.readLineSync()!;
        print("Результат: ${text.replaceAll(re, rep)}");
        break;

      case "3":
        print(re.hasMatch(text) ? "Совпадает" : "Не совпадает");
        break;
    }
  }
}