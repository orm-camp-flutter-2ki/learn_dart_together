import 'package:http/http.dart' as http;
import 'dart:convert';

class MaskApi {
  final http.Client _client; // HTTP 클라이언트 객체를 저장하기 위한 멤버 변수

  // 생성자. client(선택적 매개변수)를 받아서 클라이언트를 초기화
  MaskApi({http.Client? client}) : _client = client ?? http.Client();

//        <자료형>      메서드명()
  Future<List<Store>> getMasks() async {   // 마스크 정보를 가져와서 Store 객체의 리스트로 반환하는 비동기 메서드
    final response = await _client.get(Uri.parse('http://104.198.248.76:3000/mask'));    // 주어진 URL에서 데이터를 가져옴
    final jsonMap = response.statusCode != 200   // 삼항연산자. =부터 조건문(200이 아니면 오류가 남. 200이 정상적으로 통신했다는 통신코드)
            ? throw Exception("오류남")             // 응답 상태 코드가 200이 아닌 경우 예외를 발생(statusCode는 HTTP 요청에 대한 응답의 상태 코드를 나타내는 속성)
        : jsonDecode(utf8.decode(response.bodyBytes)); //utf8.decode() 함수: UTF-8로 인코딩된 바이트 배열을 문자열로 디코딩

    final jsonList = jsonMap['stores'] as List;     // JSON 데이터에서 'stores' 키에 해당하는 값을 추출
    return jsonList.map((e) => Store.fromJson(e)).toList();     // JSON 리스트를 Dart 객체의 리스트로 변환하는 과정을 나타냄
  } }//jsonList는 리스트이며, .map() 메서드를 사용하여 리스트의 각 요소에 함수를 적용->실행되면 결과물로 객체가 나오고, 이것을 toLIST로해서 반환
// cf.체이닝: 여러 메서드 호출을 연결하여 코드를 간결하고 가독성 있게 작성하는 기술

class Store {    // JSON 데이터를 Store 객체로 변환하는 메서드
  static Store fromJson(Map<String, dynamic> json) {
    return Store(/* 필요한 속성을 JSON에서 가져와 초기화하는 코드 */);
  }
}