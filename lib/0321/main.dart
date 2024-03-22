import 'dart:convert';

import 'task02.dart';

void main() {

}

Future<Movie> getMovieInfo(String jsonString) async {
  await Future.delayed(Duration(seconds: 2));
  Map<String, dynamic> json = jsonDecode(jsonString);
  return Movie.fromJson(json);
}