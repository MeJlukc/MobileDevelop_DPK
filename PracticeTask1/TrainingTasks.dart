import 'dart:math';

int sum(int a, int b) {
    return a + b;
}

int multiply(int a, int b) {
    return a * b;
}

double divide(double a, double b) {
    return a / b;
}

int factorial(int a) {
    if (a == 1) {
        return 1;
    }

    return factorial(a - 1) * a;
}

int remainder(int a, int b) {
    return a % b;
}

num power(num base, num exponent) {
    return pow(base, exponent);
}

int sumList(List<int> list) {
    return list.reduce((acc, el) => acc += el);
}

double averageList(List<int> list) {
    return sumList(list) / list.length;
}

int maxElement(List<int> list) {
    int max = list[0];
    for (int num in list) {
        if (num < max) {
            max = num;
        }
    }
    return max;
}

int minElement(List<int> list) {
    int min = list[0];
    for (int num in list) {
        if (num < min) {
            min = num;
        }
    }
    return min;
}

List<int> squareList(List<int> list) {
    List<int> squares = [];
    for (int num in list) {
        squares.add(num * num);
    }
    return squares;
}

List<int> evenNumbers(List<int> list) {
    List<int> evens = [];
    list.forEach((num) {
        if (num % 2 == 0) {
            evens.add(num);
        }
    });
    return evens;
}

List<int> oddNumbers(List<int> list) {
    List<int> odds = [];
    list.forEach((num) {
        if (num % 2 != 0) {
            odds.add(num);
        }
    });
    return odds;
}

List<int> greatherThan(List<int> list, int threshold) {
    List<int> greater = [];
    list.forEach((num) {
        if (num > threshold) {
            greater.add(num);
        }
    });
    return greater;
}

List<int> lessThan(List<int> list, int threshold) {
    List<int> less = [];
    list.forEach((num) {
        if (num < threshold) {
            less.add(num);
        }
    });
    return less;
}

List<int> equalTo(List<int> list, int threshold) {
    List<int> equal = [];
    list.forEach((num) {
        if (num == threshold) {
            equal.add(num);
        }
    });
    return equal;
}

void main() {
    print('Результат работы функции sum = ${sum(10, 10)}');
    print('Результат работы функции multiply = ${multiply(10, 10)}');
    print('Результат работы функции divide = ${divide(100, 10)}');
    print('Результат работы функции factorial = ${factorial(5)}');
    print('Результат работы функции remainder = ${remainder(13, 3)}');
    print('Результат работы функции power = ${power(3, 3)}');
    print('Результат работы функции sumList = ${sumList([1, 2, 3, 4])}');
    print('Результат работы функции averageList = ${averageList([1, 2, 3, 4])}');
    print('Результат работы функции minElement = ${minElement([1, 2, 3, 4])}');
    print('Результат работы функции maxElement = ${maxElement([1, 2, 3, 4])}');
    print('Результат работы функции squareList = ${squareList([1, 2, 3, 4])}');
    print('Результат работы функции evenNumbers = ${evenNumbers([1, 2, 3, 4])}');
    print('Результат работы функции oddNumbers = ${oddNumbers([1, 2, 3, 4])}');
    print('Результат работы функции greatherThan = ${greatherThan([1, 2, 3, 4], 2)}');
    print('Результат работы функции lessThan = ${lessThan([1, 2, 3, 4], 2)}');
    print('Результат работы функции equalTo = ${equalTo([1, 2, 3, 4], 3)}');
}