import 'dart:convert'; //Decode 하기 위함

import 'package:http/http.dart'
    as http; //as 패키지 이름을 생략하고 간결하게 코드를 작성 가능. 동일 함수 방지

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
}

Future<void> getTodo() async {
  //비동기 함수
  final response = //http 응답 요청 성공했는지의 여부 판단
      await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/todos/1')); //URL에서 데이터를 가지고 옴 await 키워드를 사용하여 요청 기다림

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonData = json
        .decode(response.body); //HTTP 응답 본문을 JSON 형식으로 디코딩하여 jsonData 변수에 저장

    final todo = Todo(
      //팩토리 메서드를 사용하여 JSON 데이터에서 Todo객체를 생성
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
      completed: jsonData['completed'],
    );

    print(
        'userId: ${todo.userId} id: ${todo.id} Title: ${todo.title} Completed: ${todo.completed}');
  } else {
    print('Failed to load todo');
  }
}

void main() {
  getTodo();
}
