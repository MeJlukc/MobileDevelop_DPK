import 'dart:math';
import 'dart:io';

double disc(a, b, c) => b * b - 4 * a * c;

void solve(a, b, c) {
  double d = disc(a, b, c);
  print("Дискриминант: $d");

  if (d < 0) {
    print("Корней нет");
  } else if (d == 0) {
    double x = -b / (2 * a);
    print("x: $x");
  } else {
    double x1 = (-b + sqrt(d)) / (2 * a);
    double x2 = (-b - sqrt(d)) / (2 * a);
    print("x1: $x1, x2: $x2");
  }
}

void main() {
  stdout.write("a = ");
  double a = double.parse(stdin.readLineSync()!);

  stdout.write("b = ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("c = ");
  double c = double.parse(stdin.readLineSync()!);

  solve(a, b, c);
}