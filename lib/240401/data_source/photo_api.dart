import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240401/dto/photo_dto.dart';

class PhotoApi {
  Future<List<Hits>> getListHits(String query) async {
    //쿼리는 검색어이다.
    //result는 레포지토리에서 내가 함수에서 어떤 타입을 반환하겠다.
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=43171093-45da0698334724789f24f4161&q=$query'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData =
          json.decode(response.body)['hits']; //map 형식의
      final List<Hits> hitList = jsonData
          .map((dynamic_element) => Hits.fromJson(dynamic_element))
          .toList(); //e가 제이슨 데이터 에 있는 하나하나의 맵이다.
      return hitList;
    }
    throw Exception('Error');
  }
}

// void main() async {
//   //퓨처타입이 있으면 안의 내용을 볼 수 없음 그래서 벗겨야 함 그게 await임
//   PhotoApi result = PhotoApi();
//   print(await result.getListHits('yellow')); //await 는 메서드 앞에 해야한다.
// }
