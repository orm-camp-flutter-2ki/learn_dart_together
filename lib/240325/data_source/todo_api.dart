import 'dart:convert'; //Decode 하기 위함

import 'package:http/http.dart'
    as http; //as 패키지 이름을 생략하고 간결하게 코드를 작성 가능. 동일 함수 방지

//제이슨을 어플리케이션에서 사용할 수 있게 하는 것.  인스턴스를 만들기 위해 클래스를 만들어라
class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  @override
  String toString() {
    return 'Userid = $userId id = $id title = $title completed = $completed';
  }
}

Future<List<Todo>> getTodos() async {
  //비동기 함수
  final response = //http 응답 요청 성공했는지의 여부 판단
      await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/todos')); //URL에서 데이터를 가지고 옴 await 키워드를 사용하여 요청 기다림

  if (response.statusCode == 200) {
    final List<dynamic> jsonData = json
        .decode(response.body); //HTTP 응답 본문을 JSON 형식으로 디코딩하여 jsonData 변수에 저장
    return jsonData.map((json) => Todo.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load todos');
  }
}

void main() async {
  try {
    final todos = await getTodos();
    todos.forEach(print);
  } catch (e) {
    print('에러');
  }
} //tostring 오버라이딩 Use
