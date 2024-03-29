import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:learn_dart_together/0329/dto/result_dto.dart';

import '../model/movie_detail.dart';


class MovieApi {
  final http.Client _client;

  MovieApi({http.Client? client}) : _client = client ?? http.Client();

  Future<List<ResultDto>> moviesInfoApi() async {
    // page가 1인 moviesInfo, resultDto가 list이기 때문에... list 사용...(??)
    final http.Response response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

    Map<String, dynamic> json = await (jsonDecode(utf8.decode(response.bodyBytes)));
    List jsonList = json['results'];
    return jsonList.map((e) => ResultDto.fromJson(e)).toList();
  }

  Future<MovieDetail> movieDetail(int id) async {
    final http.Response response = await _client.get(Uri.parse(
        'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page='));

    final Map<String, dynamic> json = await jsonDecode(utf8.decode(response.bodyBytes));
    return MovieDetail.fromJson(json);
  }
}
