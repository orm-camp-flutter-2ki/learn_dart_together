import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/movie_2.dart';
import '../repository/movie_2_repository_implement.dart';

class MovieApi {
  Future<Movie> fetchMovie(int id) async {
    final response = await http.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    if (response.statusCode == 200) {
      return Movie.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  final repository = MovieRepositoryImpl();
  try {
    Movie movie = await repository.getMovie(1011985);
    print('영화 제목: ${movie.title}');
  } catch (e) {
    print(e);
  }
}
