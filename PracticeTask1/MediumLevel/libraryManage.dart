import 'dart:io';

List<String> books = [];

void addBook() {
  stdout.write("Введите название книги: ");
  books.add(stdin.readLineSync()!);
}

void showBooks() {
  for (int i = 0; i < books.length; i++) {
    print("$i: ${books[i]}");
  }
}

void findBook() {
  stdout.write("Название книги для поиска: ");
  String query = stdin.readLineSync()!;
  
  books.forEach((book) => {
    if (book == query) {
      print("Книга найдена");
      return ;
    }
  })
  print("Не найдено");
}

void editBook() {
  showBooks();
  stdout.write("Номер книги для изменения: ");
  int id = int.parse(stdin.readLineSync()!);

  stdout.write("Новое название книги: ");
  books[id] = stdin.readLineSync()!;
}

void deleteBook() {
  showBooks();
  stdout.write("Какую книгу удалить? Введите номер: ");
  int book = int.parse(stdin.readLineSync()!);
  books.removeAt(id);
}

void main() {
  while (true) {
    print("1 — добавить");
    print("2 — показать");
    print("3 — найти");
    print("4 — изменить");
    print("5 — удалить");
    print("0 — выход");

    stdout.write("Введите необходимую операцию: ");
    int request = int.parse(stdin.readLineSync()!);

    if (request == 1) addBook();
    else if (request == 2) showBooks();
    else if (request == 3) findBook();
    else if (request == 4) editBook();
    else if (request == 5) deleteBook();
    else if (request == 0) break;
  }
}