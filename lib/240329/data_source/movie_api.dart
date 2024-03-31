import 'dart:convert';
import 'package:http/http.dart' as http;
import '../dto/movie_dto.dart';

class MovieApi {
  final _base = 'https://api.themoviedb.org';

  Future<List<MovieDto>> getMovies() async {
    final http.Response response = await http.get(Uri.parse(
        '$_base/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    final Map<String, dynamic> json = jsonDecode(response.body);

    final List resultJson = json['results'];

    final movieList = resultJson.map((e) => MovieDto.fromJson(e)).toList();

    return movieList;
  }

}
