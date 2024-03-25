import 'dart:convert';
import 'package:http/http.dart' as http;

// 장표 링크에 있는 변수 속정 정하기
class Todo {
  int userId;
  int id;
  String title;
  bool completed;

  // 생성자(Todo) 만들기
  // Json링크에 4가지 데이터 모두 값이 있어서 required
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  // Json 데이터 받아서 Todo 만들기
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];
}

// URL에서 데이터 가져오기
// URL의 데이터가 1객체 => final
// URL의 데티터가 n객체 => List
Future<List<Todo>> getTodos() async {
  final http.Response response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

  if (response.statusCode == 200) {
    List<dynamic> jsonList =
        jsonDecode(response.body); // response.body = URL에서 가져온 데이터
    return jsonList.map((json) => Todo.fromJson(json)).toList();
  } else {
    throw Exception('!= 200');
  }

  // === dead code ===
  // List<dynamic> jsonList = jsonDecode(response.body);
  // return jsonList.map((e) => Todo.fromJson(e)).toList();
}

void main() async {
  final todos = await getTodos();
  for (final todo in todos) {
    print(
        'userId : ${todo.userId}, ID: ${todo.id}, Title: ${todo.title}, Completed: ${todo.completed}');
  }
}
