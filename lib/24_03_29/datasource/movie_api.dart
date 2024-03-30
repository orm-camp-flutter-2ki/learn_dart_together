import 'package:http/http.dart' as http;
import 'package:learn_dart_together/24_03_29/dto/movie_dto.dart';
import 'dart:convert';
import '../dto/movie_info_dto.dart';

abstract interface class MovieApi {
  Future<MovieInfoDto> getMovieInfoDto();

  Future<MovieDto> getMovieDto(int id);
}

class MovieApiImpl implements MovieApi {
  String _baseUri(String dir) => 'https://api.themoviedb.org/3/movie/$dir?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';
  final _upcoming = 'upcoming';

  @override
  Future<MovieInfoDto> getMovieInfoDto() async {
    final http.Response response = await http.get(Uri.parse(_baseUri(_upcoming)));
    Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Http request 오류');
    return MovieInfoDto.fromJson(json);
  }

  @override
  Future<MovieDto> getMovieDto(int id) async {
    final http.Response response = await http.get(Uri.parse(_baseUri(id.toString())));
    Map<String, dynamic> json = (response.statusCode == 200)
        ? jsonDecode(utf8.decode(response.bodyBytes))
        : throw Exception('Http request 오류');
    return MovieDto.fromJson(json);
  }
}
