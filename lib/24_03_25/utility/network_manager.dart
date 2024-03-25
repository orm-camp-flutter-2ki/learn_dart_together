import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_25/utility/network_error.dart';

class NetworkManager {
  /* 싱글톤을 사용한 네트워크 매니저 구현
   * 1. 싱글톤이란?
   * 프로그램의 다양한곳에서 사용되어지는 객체에 접근할 수 있는 수단을 1가지로 고정하여
   * 여러곳에서 동시에 접근을 했을 때 발생할 수 있는 에러를 방지하기 위해서 사용되어지는 디자인 패턴.
   *
   * 2. 그래서 어케씀?
   * 먼저 클래스 내부에 본인의 인스턴스를 static으로 만들어 준다.
   * 그리고 privateConstructor를 만들어서, 외부에서 초기화 하지 못하도록 한다.(싱글톤의 인스턴스는 1개만 존재해야 된다)
   *
   * 3. 이걸 왜 쓰는데?
   * 몇 가지 이유가 있는데, 일단 여러 객체에서 동시 접근할 때, 발생할 수 있는 예상치 못한 에러를 없애기 위함이고
   * 하나의 객체가 프로그램 전반에 걸쳐서 공유되어야 하는데 이말은 == 많은 인스턴스를 만들어야 한다 == 메모리 낭비가 심하다 가 되기 때문
   * 또한 싱글톤의 장점이자 단점인데, 싱글톤은 static이기 때문에 앱의 시작부터 종료까지 계속해서 메모리에 남아있게 된다.
   * 단순하게 우리 앱은 대부분의 페이지에서 네트워크 통신이 필요한데, 그때마다 네트워크 통신하는 객체를 메모리에 올렸다가 내렸다가 할 필요가 없음.
   * 기타등등의 이유가 있는데 이건 따로 공부하기
   *
   * 4. 단점?
   * 일단.. 쓰던 안쓰던 계속해서 메모리를 차지하고 있다는것
   * 지속적인 참조카운팅으로 성능 하락의 원인이 될 수 도 있다는것
   * 너무 많이 쓰이면 OCP 원칙(SOLID 개방 폐쇄원칙)을 지키기 어렵다는것 등이 있음.
   * */
  static final NetworkManager _shared = NetworkManager._privateConstructor();

  NetworkManager._privateConstructor();

  static NetworkManager get shard => _shared;

  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    try {
      final http.Response response = await http.get(Uri.parse(endpoint));
      final int status = response.statusCode;

      if (status >= 200 && status < 300) {
        final Map<String, dynamic> jsonString = jsonDecode(response.body);
        return  jsonString;
      } else if (status >= 400 && status < 500) {
        throw Exception(
            '${NetworkingError.badClientRequest.message} 코드: $status');
      } else if (status >= 500) {
        throw Exception(
            '${NetworkingError.badServerResponse.message} 코드: $status');
      } else {
        throw Exception('${NetworkingError.corruptedData.message} 코드: $status');
      }
    } catch (e) {
      throw Exception(NetworkingError.unknown.message);
    }
  }

  Future<List<dynamic>> fetchDataForList(String endpoint) async {
    try {
      final http.Response response = await http.get(Uri.parse(endpoint));
      final int status = response.statusCode;

      if (status >= 200 && status < 300) {
        final List<dynamic> jsonList = jsonDecode(response.body);
        return  jsonList;
      } else if (status >= 400 && status < 500) {
        throw Exception(
            '${NetworkingError.badClientRequest.message} 코드: $status');
      } else if (status >= 500) {
        throw Exception(
            '${NetworkingError.badServerResponse.message} 코드: $status');
      } else {
        throw Exception('${NetworkingError.corruptedData.message} 코드: $status');
      }
    } catch (e) {
      throw Exception(NetworkingError.unknown.message);
    }
  }
}
