import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:http/http.dart' as http;

class SubwayApi {
  // http://swopenapi.seoul.go.kr/api/subway/sample/xml/realtimeStationArrival/0/5/서울
  Future<String> getSubway(String station) async {
    final response = await http
        .get(Uri.parse('https://overwatch.blizzard.com/ko-kr/career/788b7c0163b5d6feb8a520a1%7C0f7b3ca3efb7f6e755b4402eb1789b20/'));

    // unicode
    return utf8.decode(response.bodyBytes);
  }
}

void main() {
  final p1 = Person('name', 10, ['농구']);
  final p2 = Person('name', 10, ['농구']);

  print(p1 == p2);
}

class Person {
  String name;
  int age;
  List<String> hobby;

  Person(this.name, this.age, this.hobby);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          age == other.age &&
          hobby.equals(other.hobby);  // sexy

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ hobby.hashCode;
}