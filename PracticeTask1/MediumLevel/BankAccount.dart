import 'dart:io';

double balance = 0;

void deposit() {
  stdout.write("Введите сумму для пополнения: ");
  balance += double.parse(stdin.readLineSync()!);
}

void withdraw() {
  stdout.write("Введите сумму снятия: ");
  double sum = double.parse(stdin.readLineSync()!);
  if (sum <= balance) balance -= sum;
  else print("Недостаточно средств");
}

void showBalance() => print("Баланс: $balance");

void main() {
  while (true) {
    print("1 — пополнить");
    print("2 — снять");
    print("3 — баланс");
    print("0 — выход");

    stdout.write("Выберите вариант: ");
    int c = int.parse(stdin.readLineSync()!);

    if (c == 1) deposit();
    else if (c == 2) withdraw();
    else if (c == 3) showBalance();
    else if (c == 0) break;
  }
}