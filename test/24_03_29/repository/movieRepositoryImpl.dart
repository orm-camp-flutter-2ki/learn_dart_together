import 'package:collection/collection.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/data_source/movie_api.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/model/movie.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_29/repository/movieRepositoryImpt.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;
import 'mockResult.dart';

void main() {
  // givven when then

  group('연습문제 1번 영화 정보 가져와서 모델에 담고 Json 형태로 출력하기', () {
    test('모델에 담겨있는지 확인', () async {
      final MockClient mockClient = MockClient((req) async {
        if (req.url.toString() ==
            'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1') {
          return http.Response(mockData, 200,
              headers: {'content-type': 'application/json; charset=utf-8'});
        }
        return http.Response('''{"message":"잘못된 요청"}''', 400);
      });
      MovieRepositoryImpl realRepo = MovieRepositoryImpl(MovieApi());
      MovieRepositoryImpl repoTest =
          MovieRepositoryImpl(MovieApi(client: mockClient));
      final contentList = await repoTest.getMovieInfoList();
      final realContentList = await realRepo.getMovieInfoList();
      print(contentList[0].overview);
      print(realContentList[0].overview);
      ;
      expect(contentList[0].title, "쿵푸팬더 4");
      expect(contentList.equals(realContentList), true);
    });
  });
}

//
// class MockJsonPlaceHolderApi extends MovieApi {
//   @override
//   Future<List<Movie>> getMovie() async {
//     final result = {
//       "adult": false,
//       "backdrop_path": "/1XDDXPXGiI8id7MrUxK36ke7gkX.jpg",
//       "genre_ids": [28, 12, 16, 35, 10751],
//       "id": 1011985,
//       "original_language": "en",
//       "original_title": "Kung Fu Panda 4",
//       "overview":
//           "마침내 내면의 평화… 냉면의 평화…가 찾아왔다고 믿는 용의 전사 ‘포’ 이젠 평화의 계곡의 영적 지도자가 되고, 자신을 대신할 후계자를 찾아야만 한다. “이제 용의 전사는 그만둬야 해요?” 용의 전사로의 모습이 익숙해지고 새로운 성장을 하기보다 지금 이대로가 좋은 ‘포’ 하지만 모든 쿵푸 마스터들의 능력을 그대로 복제하는 강력한 빌런 ‘카멜레온’이 나타나고 그녀를 막기 위해 정체를 알 수 없는 쿵푸 고수 ‘젠’과 함께 모험을 떠나게 되는데… 포는 가장 강력한 빌런과 자기 자신마저 뛰어넘고 진정한 변화를 할 수 있을까?",
//       "popularity": 4028.167,
//       "poster_path": "/1ZNOOMmILNUzVYbzG1j7GYb5bEV.jpg",
//       "release_date": "2024-03-02",
//       "title": "쿵푸팬더 4",
//       "video": false,
//       "vote_average": 6.9,
//       "vote_count": 378
//     };
//
//     return [Movie.fromJson(result)];
//   }
// }

// serilization: 서버가 믿을만 하여 dto 를 쓰지 않을떄 모델클래스를 만들떄 사용한다.
// jsonKey 어노테이션을 활용하여 jsonKey => 모델의 필드로 매핑 가능
// @JsonKey(name: 'addr')
//final String address
// 내가쓰고싶은 이름을 쓰는 모델을 만듦 && dto 역할
// 서버를 100 프로 신뢰할때.
// null 은 못거른다.
