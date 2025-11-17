import 'dart:io';
import 'dart:collection';

Map<String, List<String>> graph = {};

void addVertex() {
  stdout.write("Имя вершины: ");
  String v = stdin.readLineSync()!;
  if (!graph.containsKey(v)) {
    graph[v] = [];
  }
}

void addEdge() {
  stdout.write("От: ");
  String a = stdin.readLineSync()!;
  stdout.write("К: ");
  String b = stdin.readLineSync()!;
  graph[a] ??= [];
  graph[b] ??= [];
  graph[a]!.add(b);
  graph[b]!.add(a);
}

void removeVertex() {
  stdout.write("Вершина: ");
  String v = stdin.readLineSync()!;
  graph.remove(v);
  for (var e in graph.values) {
    e.remove(v);
  }
}

void removeEdge() {
  stdout.write("От: ");
  String a = stdin.readLineSync()!;
  stdout.write("К: ");
  String b = stdin.readLineSync()!;
  graph[a]?.remove(b);
  graph[b]?.remove(a);
}

void printGraph() {
  print("Граф:");
  graph.forEach((k, v) => print("$k: $v"));
}

void shortestPath() {
  stdout.write("Начало: ");
  String start = stdin.readLineSync()!;
  stdout.write("Конец: ");
  String end = stdin.readLineSync()!;

  Queue<String> q = Queue();
  Map<String, String?> prev = {};

  for (var v in graph.keys) prev[v] = null;
  q.add(start);

  while (q.isNotEmpty) {
    String cur = q.removeFirst();
    if (cur == end) break;
    for (var next in graph[cur] ?? []) {
      if (prev[next] == null && next != start) {
        prev[next] = cur;
        q.add(next);
      }
    }
  }

  if (prev[end] == null) {
    print("Пути нет");
    return;
  }

  List<String> path = [];
  String? cur = end;
  while (cur != null) {
    path.add(cur);
    cur = prev[cur];
  }
  print("Путь: ${path.reversed.toList()}");
}

void main() {
  while (true) {
    print("\n1 добавить вершину");
    print("2 добавить ребро");
    print("3 удалить вершину");
    print("4 удалить ребро");
    print("5 вывести граф");
    print("6 кратчайший путь");
    print("0 выход");

    stdout.write(">> ");
    String request = stdin.readLineSync()!;

    switch (request) {
      case "1": addVertex(); break;
      case "2": addEdge(); break;
      case "3": removeVertex(); break;
      case "4": removeEdge(); break;
      case "5": printGraph(); break;
      case "6": shortestPath(); break;
      case "0": return;
    }
  }
}