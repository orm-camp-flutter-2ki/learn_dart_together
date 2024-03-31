import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/movie_dto.dart';
import '../repository/movie_repository_implement.dart';

class MovieApi {
  // 원래 URL
  final String _baseUrl = 'https://api.themoviedb.org/3/movie/upcoming';
  // URL에 있던 API Key
  final String _apiKey = 'a64533e7ece6c72731da47c9c8bc691f';
  // URL에 있던 언어 설정(?)
  final String _language = 'ko-KR';
  // URL에 있던 페이지
  final String _page = '1';

  // Json Data 가져오기
  Future<MovieDto> receiveMovieData() async {
    final response = await http.get(Uri.parse(
        '$_baseUrl?api_key=$_apiKey&language=$_language&page=$_page'));

    // 정상(200)이면
    if (response.statusCode == 200) {
      // Json Decode
      return MovieDto.fromJson(json.decode(response.body));
    } else {
      // !=200 => '실패!'
      throw Exception('실패!');
    }
  }
}

void main() async {
  final repository = MovieRepositoryImpl();
  final movies = await repository.getMovieInfoList();
  for (var movie in movies) {
    print('Title: ${movie.title}, Overview: ${movie.overview}');
  }
}
