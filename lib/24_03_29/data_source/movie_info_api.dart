import 'dart:convert';

import 'package:learn_dart_together/24_03_29/dto/movie_info_dto.dart';
import 'package:learn_dart_together/24_03_29/mapper/movie_info_mapper.dart';

import '../model/movie_info.dart';

import 'package:http/http.dart' as http;

class MovieInfoApi {
  Future<List<MovieInfoDto>> getMovieInfo() async {
    var url =
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';

    var response = await http.get(Uri.parse(url));

    final json = jsonDecode(utf8.decode(response.bodyBytes)); //
    final jsonList = json['results'] as List;
    return jsonList.map((e) => MovieInfoDto.fromJson(e)).toList();

    //A value of type 'List<MovieInfoDto>'
    // can't be returned from the method 'getMovieInfo' because it has a return type of 'Future<List<MovieInfo>>'.
  }
}
